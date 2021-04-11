variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "SLACK_CHANNEL" {
  description = "Name of the SLACK Channel"
  type        = string
}

variable "SLACK_HOOK_URL" {
  description = "The Slack Webhook URL"
  type        = string
}

variable "rules" {
  type = list(any)
}

variable "arns" {
  type = list(any)
}

variable "function_name" {
  type        = string
  description = "The name of the lambda function"
  default     = "aws-to-slack-Handler"
}

variable "role_name" {
  type        = string
  description = "The name of the IAM role"
  default     = "aws-to-slack-HandlerRole"
}

variable "runtime" {
  type    = string
  default = "nodejs6.10"
}

variable "memory_size" {
  default     = 256
  type        = number
  description = "lambda ram"
}

variable "timeout" {
  default     = 10
  type        = number
  description = "lambda timeout"
}

variable "protocol" {
  type        = string
  default     = "lambda"
  description = "SNS Subscription Protocol"

  validation {
    condition     = can(regex("application|email-json|email|firehose|http|https|lambda|sms|sqs", var.protocol))
    error_message = "Expected protocol to be one of [application email-json email firehose http https lambda sms sqs]."
  }
}
