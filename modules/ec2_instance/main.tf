resource "aws_instance" "example_instance" {
    ami           = var.ami_value
    instance_type = var.instance_type_value
    key_name      = var.key_pair_value
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids

    tags = {
        Name = "example-instance"
    }
}