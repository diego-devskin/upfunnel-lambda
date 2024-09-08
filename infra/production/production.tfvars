app = {
  cluster_arn         = "arn:aws:ecs:us-east-1:031078334487:cluster/ecs-upfunnels-prd"
  container_port      = 8000
  image               = "public.ecr.aws/ecs-sample-image/amazon-ecs-sample:latest"
  desired_task_cpu    = "2048"
  desired_task_memory = "4096"
  entry_point         = ["node", "server.js"]
  environment = [
     {
       name = "S3_BUCKET_NAME"
       value = "cdn-upfunnels"
     },
     {
       name = "AWS_REGION"
       value = "us-east-1"
     },
     {
       name = "CDN_URL"
       value = "https://d1whjs67wvm6sf.cloudfront.net/"
     }
  ]
  secrets = [
    {
      name = "REFRESH_TOKEN_SECRET"
      valueFrom = "arn:aws:secretsmanager:us-east-1:031078334487:secret:REFRESH_TOKEN_SECRET-prod-xRD32S"
    },
    {
      name = "AWS_SECRET_ACCESS_KEY"
      valueFrom = "arn:aws:secretsmanager:us-east-1:031078334487:secret:AWS_SECRET_ACCESS_KEY-prod-FVfLxX"
    },
    {
      name = "AWS_ACCESS_KEY_ID"
      valueFrom = "arn:aws:secretsmanager:us-east-1:031078334487:secret:AWS_ACCESS_KEY_ID-prod-uXix0V"
    },
    {
      name = "ACCESS_TOKEN_SECRET"
      valueFrom = "arn:aws:secretsmanager:us-east-1:031078334487:secret:ACCESS_TOKEN_SECRET-prod-oL3mwQ"
    }
  ]
}

config = {
  profile             = "default"
  region              = "us-east-1"

  vpc_id              = "vpc-0a4befabd436337e9"
  vpc_cidr            = "10.2.0.0/16"
  public_sub_1a       = "subnet-0e061b716e270aec1"
  public_sub_1b       = "subnet-02aeab3e9297f24da"
  public_sub_1c       = "subnet-04cd9b7c200cf4cbe"

  team                = "upfunnels"
  environment         = "prod"       
  projectName         = "backend"
  app_name            = "cdn-upload-images"
  arn_certificate     = "arn:aws:acm:us-east-1:031078334487:certificate/aed7ae19-00db-4c3e-8226-bfc3d4c41517"
}