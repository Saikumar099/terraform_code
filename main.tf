provider "aws" {
    region = "us-east-1"
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    instance_type_value = "t2.micro"
    ami_value = "ami-0e2c8caa4b6378d8c"
    key_pair_value = "initial_keypair"
    subnet_id = "subnet-08d06ba26ab2065ca"
    vpc_security_group_ids = ["sg-02d8aa7055e502ede"]
}

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

output "tags" {
    value = module.ec2_instance.tags
}

output "instance_type" {
    value = module.ec2_instance.instance_type
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

resource "random_id" "bucket_suffix" {
  byte_length = 8
}

module "s3_bucket" {
    source = "./modules/s3_bucket"
    bucket_name = "sample-bucket-${random_id.bucket_suffix.hex}"
    tags = {
        Name = "test-bucket"
        Environment = "test"
    }
  
}

output "bucket_name" {
    value = module.s3_bucket.bucket_name
}
