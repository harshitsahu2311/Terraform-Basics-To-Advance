variable "bucket_name" {
  description = "This is for state management bucket"
  default = "terraform-state-devops-2311"
}

variable "dynamo_name" {
  description = "This is for state management DB"
  default = "terraform-state-db-2311"
}