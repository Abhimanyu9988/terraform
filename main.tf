terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      ##### Adding parameters
      shared_config_files  = ["/Users/abhibaj/.aws/config"]
    }
  }

  required_version = ">= 0.13"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "AbhiBajLinux" {
  ami = var.ami
  key_name = var.key_name #Please change this here or the default value in variables.tf file
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-01da51cf8ccfc2ff6"] #This is in region us-east-1, If you are changing the SG, Please change the region on line 13 and add the new SG
  tags = var.tags
}
