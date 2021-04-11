resource "aws_sns_topic_subscription" "snstoslack" {
  count     = length(var.arns)
  topic_arn = element(var.arns, count.index)
  protocol  = var.protocol
  endpoint  = aws_lambda_function.awstoslack.arn
}
