#Dynamo_Tables
#dynamo table
resource "aws_dynamodb_table" "example" {
  name           = "${var.my-Environment}-example-table"  # ✅ hyphen + unique
  # Use a variable for the environment to ensure uniqueness     
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S" #S mean string
  }

  tags = {
    Environment = "Dev"
    Project     = "Terraform Practice"
  }
}