common_tags = {
  "createdby" = "Terraform"
"usage" = "development" }

SLACK_CHANNEL  = "aws-notification"
SLACK_HOOK_URL = "https://hooks.slack.com/services/XXX/XXXX/xxxx"
rules = [
"codecommit-repo"]

arns = [
  "arn:aws:sns:eu-west-1:12345567:codecommit_repo"
]
