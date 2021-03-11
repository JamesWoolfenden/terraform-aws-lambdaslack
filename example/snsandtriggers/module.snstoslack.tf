module "snstoslack" {
  source         = "../../"
  arns           = var.arns
  common_tags    = var.common_tags
  rules          = var.rules
  SLACK_CHANNEL  = var.SLACK_CHANNEL
  SLACK_HOOK_URL = var.SLACK_HOOK_URL
}
