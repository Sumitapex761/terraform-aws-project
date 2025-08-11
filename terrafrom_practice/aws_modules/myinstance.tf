#Ec2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "${var.my-Environment}-my-ec2-instance"
    Environment = var.my-Environment
  }

  # Count for production instances
  count = var.instance_count != null ? var.instance_count : 1
}