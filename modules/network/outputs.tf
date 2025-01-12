output "vpc_cidr_block" {
  value = var.vpc_cidr_block  
}

output "subnet_cidr_block" {
  value = var.subnet_cidr_block
}

output "subnet_id" {
  value = aws_subnet.my_subnet.id
}

output "sg1_id" {
  value = aws_security_group.sg1.id  
}

output "vpc_id"{
  value = aws_vpc.myvpc.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw1.id
}