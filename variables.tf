# AWS region and AZs in which to deploy
variable "aws_region" {
  default = "us-east-1"
}

variable "availability_zones" {
  default = "us-east-1a"
}

# All resources will be tagged with this
variable "environment_name" {
  default = "terraform-demo"
}

# Number of demo servers to provision
variable "demo_server_count" {
  default = 1
}

# Instance size
variable "instance_type" {
  default = "t2.micro"
}

# SSH key name to access EC2 instances (should already exist) in the AWS Region
variable "key_name" {
}

variable "ec2_public_key" {
}
