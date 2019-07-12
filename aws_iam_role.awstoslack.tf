resource "aws_iam_role" "awstoslack" {
  name               = "aws-to-slack-HandlerRole-E3IU6FWE8HH8"
  assume_role_policy = data.aws_iam_policy_document.assumerole.json
}
