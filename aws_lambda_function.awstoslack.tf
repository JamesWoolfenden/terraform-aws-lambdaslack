resource "aws_lambda_function" "awstoslack" {
  function_name    = "aws-to-slack-Handler-1EGUEB33ADSVH"
  handler          = "src/index.handler"
  memory_size      = "256"
  role             = "${aws_iam_role.awstoslack.arn}"
  runtime          = "nodejs6.10"
  timeout          = "10"
  filename         = "${path.module}\\lambda.zip"
  source_code_hash = "${data.archive_file.lambda.output_base64sha256}"

  environment {
    variables {
      "SLACK_CHANNEL"  = "${var.SLACK_CHANNEL}"
      "SLACK_HOOK_URL" = "${var.SLACK_HOOK_URL}"
    }
  }

  tags = "${var.common_tags}"
}
