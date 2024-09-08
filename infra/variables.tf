variable "config" {
  type = object({
    region           = string
    profile          = string
    vpc_id           = string
    vpc_cidr         = string
    public_sub_1a    = string
    public_sub_1b    = string
    public_sub_1c    = string
    team             = string
    environment      = string
    projectName      = string
    bucket_code_name = string

    lambda_one_name = string
    lambda_two_name = string
  })
}