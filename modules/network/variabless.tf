variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
}

variable "internet_gateway_id" {
  description = "The ID of the internet gateway"
}

variable "subnet_id" {
  description = "The ID of the subnet"
}

variable "sg1_id" {
  description = "The ID of the security group"
}

variable "environment" {
  description = "The environment for the instance"  
}