output "aws_kms_key" {
  value = aws_kms_key.gee_key.arn
}

output "random_figure" {
  value = random_integer.random_figure.result

}

