resource "aws_lambda_function" "lambda_one" {
  function_name = var.config.lambda_one_name
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_role.arn
  filename      = data.archive_file.lambda_one.output_path
  #s3_bucket     = var.config.bucket_code_name
  #s3_key        = "lambda-one.zip"

  source_code_hash = data.archive_file.lambda_one.output_base64sha256

  vpc_config {
    subnet_ids         = [var.config.public_sub_1a, var.config.public_sub_1b, var.config.public_sub_1c]
    security_group_ids = [module.sg_upfunnels_lambdas.security_group_id]
  }

  environment {
    variables = {
      EXAMPLE_ENV_VAR = "value"
    }
  }

  tags = {
    Version = "${timestamp()}"
  }
}

resource "aws_lambda_function" "lambda_two" {
  function_name = var.config.lambda_two_name
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_role.arn
  filename      = data.archive_file.lambda_two.output_path
  #s3_bucket     = var.config.bucket_code_name
  #s3_key        = "lambda-two.zip"

  source_code_hash = data.archive_file.lambda_two.output_base64sha256

  vpc_config {
    subnet_ids         = [var.config.public_sub_1a, var.config.public_sub_1b, var.config.public_sub_1c]
    security_group_ids = [module.sg_upfunnels_lambdas.security_group_id]
  }

  environment {
    variables = {
      EXAMPLE_ENV_VAR = "value"
    }
  }

  tags = {
    Version = "${timestamp()}"
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