output "aws_kms_key" {
  value = aws_kms_key.gee_key.arn
}

output "random_figure" {
  value = random_integer.random_figure.result

}

/*

output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-bucket.id
}

output "s3_bucket_region" {
    value = aws_s3_bucket.my-s3-bucket.region
}*/