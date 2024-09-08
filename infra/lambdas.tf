resource "aws_lambda_function" "lambda_one" {
  function_name = "lambda-one"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_role.arn
  s3_bucket     = var.bucket_code_name
  s3_key        = "${var.bucket_code_name}/lambda-one.zip"

  environment {
    variables = {
      EXAMPLE_ENV_VAR = "value"
    }
  }
}

resource "aws_lambda_function" "lambda_two" {
  function_name = "lambda-two"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_role.arn
  s3_bucket     = "var.bucket_code_name"
  s3_key        = "${var.bucket_code_name}/lambda-two.zip"

  environment {
    variables = {
      EXAMPLE_ENV_VAR = "value"
    }
  }
}

#resource "aws_lambda_function" "lambda_three" {
#  function_name = "lambda-three"
#  handler       = "index.handler"
#  runtime       = "nodejs18.x"
#  role          = aws_iam_role.lambda_role.arn
#  s3_bucket     = "my-lambda-deployment-bucket"
#  s3_key        = "lambda-code/lambda-example.zip"
#}
#
#resource "aws_lambda_function" "lambda_four" {
#  function_name = "lambda-four"
#  handler       = "index.handler"
#  runtime       = "nodejs18.x"
#  role          = aws_iam_role.lambda_role.arn
#  s3_bucket     = "my-lambda-deployment-bucket"
#  s3_key        = "lambda-code/lambda-example.zip"
#}