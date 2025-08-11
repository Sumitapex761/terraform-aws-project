# Use AWS Default VPC (Data source)
data "aws_vpc" "default" {
  default = true
}

# Security Group Block
resource "aws_security_group" "my_security_group" {
  name        = "my_security_group"
  description = "Allow SSH and HTTP access"
  vpc_id      = data.aws_vpc.default.id  # Use default VPC id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2_instance" {
  ami             = "ami-0779caf41f9ba54f0"
  instance_type   = "t2.micro"
  key_name        = "K8S"    # <-- yaha "my_key_pair" ki jagah "K8S" likho
  security_groups = [aws_security_group.my_security_group.name]

  tags = {
    Name = "MyEC2Instance"
  }
}
