module "name" {
  source = "./aws_modules"
  my-Environment = "dev"
  ami_id         = "ami-0779caf41f9ba54f0"
  instance_type = "t2.micro"

}

module "stg-app" {
  source = "./aws_modules"
  my-Environment = "stg"
  ami_id         = "ami-0779caf41f9ba54f0"
  instance_type = "t2.medium"

}

module "prd-app" {
  source = "./aws_modules"
  my-Environment = "prd"
  ami_id         = "ami-0779caf41f9ba54f0"
  instance_type = "t2.large"
  #muje productione me 3 instance chahiye toh ye kro 
  instance_count = 3

}

