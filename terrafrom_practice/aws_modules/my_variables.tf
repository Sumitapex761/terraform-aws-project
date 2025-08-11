variable "my-Environment" {
    description = "The environment for the resources"
    type        = string
    
}
variable "ami_id" {
    description = "The is for the AMI id to use for the EC2 instance"
    type        = string
}
variable "instance_type" {
    description = "The type of the EC2 instance"
    type        = string
    default     = "t2.micro"
  
}
variable "instance_count" {
    description = "This is the count of  instances to create"
    type        = number
    default     = 1
  
}