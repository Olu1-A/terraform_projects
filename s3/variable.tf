variable "region" {

  description = "Region of resources"
  type        = map(string)
  default = {
    "1" = "us-west-1"
    "2" = "us-west-2"
  }
}
