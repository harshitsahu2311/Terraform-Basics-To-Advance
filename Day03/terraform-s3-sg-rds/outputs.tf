output "bucket_name" {
  value = aws_s3_bucket.demo_bucket.bucket
}

output "security_group_id" {
  value = aws_security_group.rds_sg.id
}

output "rds_endpoint" {
  value = aws_db_instance.rds_db.endpoint
}
