data "archive_file" "lambda" {
  type        = "zip"
  source_file = "code/lambda-one/index.js"
  output_path = "lambda-one.zip"
}