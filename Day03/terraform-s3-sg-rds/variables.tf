variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
}
