resource "aws_s3_bucket" "default" {
  bucket = var.bucket
  force_destroy = var.force_destroy
  tags = var.tags
}

resource "aws_s3_bucket_acl" "default" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read"
}