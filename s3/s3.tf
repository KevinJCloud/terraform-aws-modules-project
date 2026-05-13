resource "aws_s3_bucket" "first_s3" {
  bucket = var.first_s3

  tags = {
    Name        = var.first_s3
    }
}

