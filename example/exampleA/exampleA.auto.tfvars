common_tags = {
  "createdby" = "Terraform"
"usage" = "development" }

SLACK_CHANNEL  = "aws-notification"
SLACK_HOOK_URL = "https://hooks.slack.com/services/XXX/XXXX/xxxx"
rules = [
"codecommit-repo"]

arns = [
  "arn:aws:sns:us-east-1:123456789012:mytopic",
  "arn:aws:sns:eu-west-1:123455671231:codecommit_repo"
]
