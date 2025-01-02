variable "ami_value" {
  description = "The AMI to use for the server"
}

variable "instance_type_value" {
  description = "The type of instance to launch"
}

variable "key_pair_value" {
  description = "The key pair to use to connect to the server"
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance into"
}

variable "vpc_security_group_ids" {
  description = "The security group IDs to use for the instance" 
}

