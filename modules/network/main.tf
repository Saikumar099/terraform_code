resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr_block
    enable_dns_hostnames = true
    enable_dns_support = true
    
    tags = {
        Name = "${var.environment}-vpc"
    }
}

resource "aws_subnet" "my_subnet" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = var.subnet_cidr_block
    map_public_ip_on_launch = true
    
    depends_on = [aws_vpc.myvpc]

    tags = {
        Name = "${var.environment}-subnet"
    }
}

resource "aws_route_table" "my_rt1" {
    vpc_id = aws_vpc.myvpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw1.id
   }

    tags = {
        Name = "${var.environment}-rt"
    }

    depends_on = [aws_internet_gateway.igw1]
}

resource "aws_internet_gateway" "igw1" {
    vpc_id = aws_vpc.myvpc.id

    tags = {
        Name = "${var.environment}-igw"
    }

    depends_on = [aws_vpc.myvpc]
}

resource "aws_route_table_association" "my_rta1" {
    subnet_id      = aws_subnet.my_subnet.id
    route_table_id = aws_route_table.my_rt1.id

    depends_on = [aws_subnet.my_subnet, aws_route_table.my_rt1]
}


/*resource "aws_internet_gateway_attachment" "igw_attach" {
    vpc_id             = aws_vpc.myvpc.id
    internet_gateway_id = aws_internet_gateway.igw1.id
}*/

resource "aws_security_group" "sg1" {
    vpc_id = aws_vpc.myvpc.id

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "SSh"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.environment}-sg"
    }
  
}




