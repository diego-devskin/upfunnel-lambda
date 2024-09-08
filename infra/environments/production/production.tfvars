config = {
  profile             = "default"
  region              = "us-east-1"

  vpc_id              = "vpc-0a4befabd436337e9"
  vpc_cidr            = "10.2.0.0/16"
  public_sub_1a       = "subnet-0e061b716e270aec1"
  public_sub_1b       = "subnet-02aeab3e9297f24da"
  public_sub_1c       = "subnet-04cd9b7c200cf4cbe"

  team                = "upfunnels"
  environment         = "production"       
  projectName         = "lambdas"
  bucket_code_name    = "lambda-upfunnels-code"

  lambda_one_name     = "lambda-one"
  lambda_two_name     = "lambda-two"
}