resource "random_integer" "random_figure" {

  min = 11
  max = 777

}

resource "aws_s3_bucket" "gee" {
  depends_on = [
    random_integer.random_figure
  ]
 # acl    = "private"
  bucket = "bootcamp30-${random_integer.random_figure.result}-1olu"
  #bucket = "bootcamp30-${var.random}-1olu"
  # object_lock_enabled = true

 # versioning {
  #  enabled = true
  }

resource "aws_s3_bucket_versioning" "gee_versioning" {
  bucket = aws_s3_bucket.gee.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_acl" "gee_acl" {
  bucket = aws_s3_bucket.gee.id
  acl    = "private"
}

  # tags = {
  #   "Name" = bootcamp30-${ra}
  # }
/*
resource "aws_dynamodb_table" "gee_lock" {
  name = "gee_tf_db_lock"
  hash_key = "LockID"
  read_capacity = 3
  write_capacity = 3
  attribute {
     name = "LockID"
     type = "S"
   }
  tags = {
    Name = "Terraform Lock Table"
   }
   lifecycle {
   prevent_destroy = false
  }
 }
*/
resource "aws_kms_key" "gee_key" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 30
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryptor" {
  bucket = aws_s3_bucket.gee.id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.gee_key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

#kms key can be inputed by running  terraform import aws_kms_key.a arnnumber