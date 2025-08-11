resource "aws_s3_bucket" "my_bucket" {
  bucket = "free-devops-bucket-sumit-2025"  # ✅ hyphen + unique
  tags = {
    Name = "Free DevOps Bucket"
  }
}
