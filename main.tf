module "s3" {
  source = "./s3"

}
output "module_random" {
    value = module.s3.random_figure
  
}

output "aws_kms_key" {
  value = module.s3.aws_kms_key
}
