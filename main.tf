provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "Demo" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  key_name = "A_jenkins"
  tags = {
   "Schedule" = "Bangalore-office-hours"
  }
}
