terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "test" {
  name = "test-sg"
}

resource "aws_security_group_rule" "allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.test.id
}

resource "aws_instance" "test" {
  ami                    = "ami-0f3caa1cf4417e51b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.test.id]
}