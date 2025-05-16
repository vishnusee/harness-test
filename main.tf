terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2-Instance"
  }
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}
