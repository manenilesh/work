## Create VPC 1

resource "aws_vpc" "vpc1" {
    cidr_block = "10.10.0.0/16"
    instance_tenancy = "default"
    
    tags = {
      Name = "vpc1"
    }
    }


## Create Public subnet

# subnet 1

resource "aws_subnet" "public_1" {
    vpc_id = aws_vpc.vpc1.id
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"
    cidr_block = "10.10.0.0/18"

    tags = {
      Name = "public-1"
    }
}

# subnet 2

resource "aws_subnet" "public_2" {
    vpc_id = aws_vpc.vpc1.id
    map_public_ip_on_launch = true
    availability_zone = "us-east-1b"
    cidr_block = "10.10.64.0/18"

    tags = {
      Name = "public-2"
    }
}


## Create Private Subnet
#subnet 1

resource "aws_subnet" "private_1" {
    vpc_id = aws_vpc.vpc1.id
    map_public_ip_on_launch = true
    availability_zone = "us-east-1c"
    cidr_block = "10.10.128.0/18"

    tags = {
      Name = "private-1"
    }
}

#subnet 2

resource "aws_subnet" "private_2" {
    vpc_id = aws_vpc.vpc1.id
    map_public_ip_on_launch = true
    availability_zone = "us-east-1d"
    cidr_block = "10.10.192.0/18"

    tags = {
      Name = "private-2"
    }
}


## Create Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "igw"
  }
}

## Create Route table

resource "aws_route_table" "myroute" {
  vpc_id = aws_vpc.vpc1.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "myroute"
  }
}

## Route table Association
# Route 1

resource "aws_route_table_association" "route_1" {
  subnet_id = aws_subnet.public_1.id
  route_table_id = aws_route_table.myroute.id
}

# Route 2

resource "aws_route_table_association" "route_2" {
  subnet_id = aws_subnet.private_1.id
  route_table_id = aws_route_table.myroute.id
}