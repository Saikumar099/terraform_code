output "public_ip" {
  value = module.ec2_instance.public_ip
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "availability_zone" {
  value = module.ec2_instance.availability_zone
}

output "private_ip" {
  value = module.ec2_instance.private_ip
}

output "public_dns" {
  value = module.ec2_instance.public_dns
}

output "private_dns" {
  value = module.ec2_instance.private_dns
}

output "security_group_id" {
  value = module.ec2_instance.security_group_id
}

output "root_block_device" {
  value = module.ec2_instance.root_block_device
}

output "ebs_block_device" {
  value = module.ec2_instance.ebs_block_device
}

output "network_interface" {
  value = module.ec2_instance.network_interface
}

output "source_dest_check" {
  value = module.ec2_instance.source_dest_check
}

output "bucket_name" {
  value = module.s3_bucket.bucket_name
}