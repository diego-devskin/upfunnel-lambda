module "sg_upfunnels_lambdas" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "sg-upfunnels-lambdas"
  description = "Security group for upfunnels lambdas with custom ports open within VPC"
  vpc_id      = local.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "lambda listen port"
      cidr_blocks = var.config.vpc_id
    }
  ]

  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}