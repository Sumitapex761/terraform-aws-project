#S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.my-Environment}-free-devops-bucket-sumit-2025"  # ✅ hyphen + unique
  tags = {
    Name = "${var.my-Environment}-Free DevOps Bucket"
    environment = var.my-Environment
  }
}