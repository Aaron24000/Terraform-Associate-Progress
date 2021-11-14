resource "aws_instance" "my_server" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = var.instance_type

  tags = {
    Name = "MyServer-${local.project_name}"
  }
}

/* module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  providers = {
      aws = aws.us
  }

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
*/