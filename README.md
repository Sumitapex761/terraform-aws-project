Terraform AWS Multi-Environment Infrastructure
📌 Overview
This project uses Terraform to provision AWS infrastructure for multiple environments (e.g., Dev, Staging, Prod) in a consistent, reusable, and maintainable way.

The code is organized with variables for flexibility, allowing the same configuration to be deployed in different environments without changing core logic.


🛠 Features
Multi-Environment Support (Dev, Staging, Prod)

Configurable AMI ID, instance type, and instance count

Follows Terraform best practices for variable usage and resource naming

Easily scalable by adjusting variable values

Idempotent — safe to apply multiple times without creating duplicate resources


📂 Project Structure

terraform_practice/
│── aws_infra/
│   ├── ec2.tf             # EC2 instance configuration
│   ├── dynamo.tf          # DynamoDB table configuration
│   ├── variables.tf       # Input variables
│   ├── outputs.tf         # Output values
│── env/
│   ├── dev.tfvars         # Variables for Dev environment
│   ├── staging.tfvars     # Variables for Staging environment
│   ├── prod.tfvars        # Variables for Production environment
│── provider.tf            # AWS provider configuration
│── README.md              # Project documentation


⚙️ Variables

variable "my_environment" {
  description = "The environment for the resources"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}



🚀 Usage
1️⃣ Initialize Terraform

terraform init


2️⃣ Plan Deployment for a Specific Environment
terraform plan 


3️⃣ Apply Deployment

terraform apply 

4️⃣ Destroy Resources
terraform destroy


Screenshots 









