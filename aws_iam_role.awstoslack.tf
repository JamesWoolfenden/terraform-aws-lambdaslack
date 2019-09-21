resource "aws_iam_role" "awstoslack" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assumerole.json
}
