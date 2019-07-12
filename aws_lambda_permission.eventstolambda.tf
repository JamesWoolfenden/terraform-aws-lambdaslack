resource "aws_lambda_permission" "EventsToLambda" {
  count         = length(var.rules)
  statement_id  = "EventsToLambda${count.index}"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.awstoslack.function_name
  principal     = "events.amazonaws.com"
  source_arn    = "arn:aws:events:eu-west-1:553700203877:rule/${element(var.rules, count.index)}"
}
