data "archive_file" "lambda_one" {
  type        = "zip"
  source_file = "../code/${var.lambda_one_name}/index.js"
  output_path = "${var.lambda_one_name}.zip"
}

data "archive_file" "lambda_two" {
  type        = "zip"
  source_file = "../code/${var.lambda_two_name}/index.js"
  output_path = "${var.lambda_two_name}.zip"
}