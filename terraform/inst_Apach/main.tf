# Terraform configuration

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "Ubuntu_16" {
  ami	=	"ami-0d563aeddd4be7fff"
  instance_type = "t2.micro"
  key_name      = "Par_3"
  tags = {
    Name = "Stage"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.Ubuntu_16.id
  allocation_id = "eipalloc-0d2b9327dc88bab8d"
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = "sg-080c36d95fbd4d39d"                               # ssh-jenkins
  network_interface_id = aws_instance.Ubuntu_16.primary_network_interface_id
}  

# Allocation ID = eipalloc-0d2b9327dc88bab8d = 3.21.54.71