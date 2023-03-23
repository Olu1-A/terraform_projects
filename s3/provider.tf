terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  
  }
  /*backend "s3" {
    bucket = "bootcamp30-309-1olu"
    key = "terraform/terraform.tfstate" #directory where my statefile will be stored
    dynamodb_table = "tf_db-lock"
    region = var.region[1]
    YORU=labe
*/
 }


# Configure the AWS Provider
provider "aws" {
  region = var.region[1]
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}*/
    /*

output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-bucket.id
}

output "s3_bucket_region" {
    value = aws_s3_bucket.my-s3-bucket.region
}*/
