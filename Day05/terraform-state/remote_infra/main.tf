# vi resources.tf
resource "aws_dynamodb_table" "my_state_table" {
    name = var.dynamo_name
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S" # String
    }
    tags = {
        Name = var.dynamo_name
    }
}

resource "aws_s3_bucket" "my_state_bucket" {
    bucket = var.bucket_name
    tags = {
        Name = var.bucket_name
    }
}
