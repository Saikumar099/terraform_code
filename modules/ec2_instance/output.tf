output "public_ip" {
    value = aws_instance.example_instance.public_ip
}

output "instance_id" {
    value = aws_instance.example_instance.id
}

output "availability_zone" {
    value = aws_instance.example_instance.availability_zone
}

output "private_ip" {
    value = aws_instance.example_instance.private_ip
}

output "public_dns" {
    value = aws_instance.example_instance.public_dns
}

output "private_dns" {
    value = aws_instance.example_instance.private_dns
}

output "security_group_id" {
    value = aws_instance.example_instance.security_groups
}

output "tags" {
    value = aws_instance.example_instance.tags
}

output "instance_type" {
    value = aws_instance.example_instance.instance_type
}

output "root_block_device" {
    value = aws_instance.example_instance.root_block_device
}

output "ebs_block_device" {
    value = aws_instance.example_instance.ebs_block_device
}

output "network_interface" {
    value = aws_instance.example_instance.network_interface
}

output "source_dest_check" {
    value = aws_instance.example_instance.source_dest_check
}




