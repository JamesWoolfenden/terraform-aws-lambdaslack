resource "aws_cloudwatch_event_target" "snstoslack" {
  count = length(var.rules)
  rule  = element(var.rules, count.index)
  arn   = aws_lambda_function.awstoslack.arn
}
