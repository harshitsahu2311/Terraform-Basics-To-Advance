#vi terraform.tf
terraform {

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

backend "s3" {
    bucket = "terraform-state-devops-2311" 
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-db-2311"
}
}
