module "s3" {
  source = "./s3"

}
output "module_random" {
    value = module.s3.random_figure
  
}

output "aws_kms_key" {
  value = module.s3.aws_kms_key
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