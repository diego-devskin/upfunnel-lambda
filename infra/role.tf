resource "aws_iam_role" "lambda_role" {
  name = "lambda-execution-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "lambda_policy_attach" {
  name       = "lambda-basic-policy"
  roles      = [aws_iam_role.lambda_role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}


resource "aws_iam_role" "sfn_role" {
  name = "sfn-execution-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "states.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy" "sfn_lambda_invoke_policy" {
  name   = "sfn-lambda-invoke-policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "lambda:InvokeFunction",
      "Effect": "Allow",
      "Resource": [
        "${aws_lambda_function.lambda_one.arn}",
        "${aws_lambda_function.lambda_two.arn}"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "sfn_policy_attach" {
  name       = "sfn-lambda-invoke-policy-attach"
  roles      = [aws_iam_role.sfn_role.name]
  policy_arn = aws_iam_policy.sfn_lambda_invoke_policy.arn
}
