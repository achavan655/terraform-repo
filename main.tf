provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  

  name = "single-new-instance"

  ami                    = "ami-0a8b4cd432b1c3063"
  instance_type          = "t2.micro"
  key_name               = "A_jenkins"
  
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
