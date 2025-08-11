#dynamo table
resource "aws_dynamodb_table" "example" {
  name           = "example-table"
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