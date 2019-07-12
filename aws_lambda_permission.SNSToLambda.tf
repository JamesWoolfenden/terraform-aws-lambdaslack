resource "aws_lambda_permission" "SNSToLambda" {
  count         = length(var.arns)
  statement_id  = "SNSToLambda${count.index}"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.awstoslack.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = element(var.arns, count.index)

  #qualifier     = "${aws_lambda_alias.test_alias.name}"
}
