provider "aws" {
  region = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "EC2" {
  ami           = "ami-096cb92bb3580c759"
  instance_type = "t2.micro"
  
  tags = {
    Name = "HelloWorld"
  }
}
