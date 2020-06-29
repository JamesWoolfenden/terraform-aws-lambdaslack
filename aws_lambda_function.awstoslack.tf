resource "aws_lambda_function" "awstoslack" {
  function_name    = var.function_name
  handler          = "src/index.handler"
  memory_size      = var.memory_size
  role             = aws_iam_role.awstoslack.arn
  runtime          = var.runtime
  timeout          = var.timeout
  filename         = "${path.module}\\lambda.zip"
  source_code_hash = data.archive_file.lambda.output_base64sha256

  environment {
    variables = {
      SLACK_CHANNEL  = var.SLACK_CHANNEL
      SLACK_HOOK_URL = var.SLACK_HOOK_URL
    }
  }

  tracing_config {
    mode = "Active"
  }

  tags = var.common_tags
}
