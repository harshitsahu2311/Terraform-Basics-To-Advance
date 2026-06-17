terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 4.16"
}
}
	required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
}

locals {
	instance = toset(["harshit", "devops","vijay","rishabh"])
}

resource "aws_instance" "terraform" {
    for_each = local.instance
    ami = "ami-0b6d9d3d33ba97d99"
    instance_type = "t3.micro"
    tags = {
        Name = each.key
    } 
}
