data "archive_file" "lambda_one" {
  type        = "zip"
  source_file = "../code/lambda-one/index.js"
  output_path = "lambda-one.zip"
}

data "archive_file" "lambda_two" {
  type        = "zip"
  source_file = "../code/lambda-two/index.js"
  output_path = "lambda-two.zip"
}