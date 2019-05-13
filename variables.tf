variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = "map"
}

variable "SLACK_CHANNEL" {
  type = "string"
}

variable "SLACK_HOOK_URL" {
  type = "string"
}

variable "rules" {
  type = "list"
}

variable "arns" {
  type = "list"
}
