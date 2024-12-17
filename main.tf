provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  tags = {
    Name        = var.bucket_name
    Environment = "tf-gui"
  }
}
