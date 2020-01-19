provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
    profile = "bal-tf"
}

resource "aws_instance" "centos7" {
  ami = "ami-02eac2c0129f6376b" 
  instance_type = "t2.micro"
  tags = {
    Name = "bal-dev-centos7"
  }
}

