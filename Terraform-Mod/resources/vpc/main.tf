
resource "aws_vpc" "aws_instance_vpc" {
    cidr_block = var.aws_vpc_CIDR

tags = {
    Name = var.aws_vpc_Tags
  }
}


# Subnet 1

resource "aws_subnet" "aws_instance_subnet_1" {
  vpc_id     = aws_vpc.aws_instance_vpc.id
  cidr_block = var.aws_vpc_subnet_1_CIDR

  tags = {
    Name = var.aws_vpc_subnet_1_Tags
  }
}


# Subnet 2

resource "aws_subnet" "aws_instance_subnet_2" {
  vpc_id     = aws_vpc.aws_instance_vpc.id
  cidr_block = var.aws_vpc_subnet_2_CIDR

tags = {
    Name = var.aws_vpc_subnet_2_Tags
  }
}



# Create Internet Gateway

resource "aws_internet_gateway" "aws_instance_VPC_IGW" {
  vpc_id = aws_vpc.aws_instance_vpc.id

  tags = {
    Name = var.aws_vpc_IGW_Tags
  }
}



# create Route Table

resource "aws_route_table" "aws_instance_VPC_routetable" {
  vpc_id = aws_vpc.aws_instance_vpc.id

  route {
    cidr_block = var.aws_vpc_route_table_CIDR 
    gateway_id = aws_internet_gateway.aws_instance_VPC_IGW.id
  }

  tags = {
    Name = var.aws_vpc_RouteTable_Tags
  }
}

resource "aws_main_route_table_association" "aws_instance_VPC_set_main_route" {
  vpc_id         = aws_vpc.aws_instance_vpc.id
  route_table_id = aws_route_table.aws_instance_VPC_routetable.id
}