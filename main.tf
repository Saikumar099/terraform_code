provider "aws" {
  region = "us-east-1"
}

module "network" {
    source                 = "./modules/network"
    vpc_cidr_block         = var.vpc_cidr_block
    subnet_cidr_block      = var.subnet_cidr_block
    internet_gateway_id    = module.network.internet_gateway_id
    sg1_id                 = module.network.sg1_id
    subnet_id              = module.network.subnet_id
    environment            = var.environment
}

module "ec2_instance" {
  source                 = "./modules/ec2_instance"
  instance_name          = var.instance_name
  instance_type_value    = var.instance_type_value
  ami_value              = var.ami_id
  key_pair_value         = var.key_pair_value
  subnet_id              = module.network.subnet_id
  vpc_security_group_ids = module.network.sg1_id
  environment            = var.environment
}

resource "random_id" "bucket_suffix" {
  byte_length = 8
}

module "s3_bucket" {
  source          = "./modules/s3_bucket"
  bucket_name     = "sample-bucket-${random_id.bucket_suffix.hex}"
  tags = {
    Name          = "test-bucket"
    Environment   = "test"
  }
}
