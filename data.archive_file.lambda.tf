data "archive_file" "lambda" {
  type        = "zip"
  source_dir  = "${path.module}/code/"
  output_path = "${path.module}/lambda.zip"

  depends_on = [
    "null_resource.node_modules",
  ]
}
