variables{
    s3_bucket_name = "mytestbuc1142"
}
run "create_s3" {
  command = apply

  variables {
    bucket_name = var.s3_bucket_name
  }

  assert {
    condition     =  aws_s3_bucket.s3.bucket == var.s3_bucket_name
    error_message = "Invalid S3 Name"
  }
}