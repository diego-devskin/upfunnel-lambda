data "archive_file" "lambda_one" {
  type        = "zip"
  source_file = "${path.module}/../code/${var.config.lambda_one_name}"
  output_path = "${var.config.lambda_one_name}.zip"
}

data "archive_file" "lambda_two" {
  type        = "zip"
  source_file = "${path.module}/../code/${var.config.lambda_two_name}"
  output_path = "${var.config.lambda_two_name}.zip"
}