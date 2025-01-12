variable "ami_id" {
  description = "The AMI to use for the server"
}

variable "instance_type_value" {
  description = "The type of instance to launch"
}

variable "key_pair_value" {
  description = "The key pair to use to connect to the server"    
}

variable "subnet_cidr_block" {
  description = "The subnet CIDR to launch the instance into"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"   
}

variable "environment" {
  description = "The environment for the instance"    
}

variable "instance_name" {
  description = "The name of the instance"  
}

