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
*/
 }


# Configure the AWS Provider
provider "aws" {
  region = var.region[1]
}