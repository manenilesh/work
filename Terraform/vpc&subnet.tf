# Create S3 Bucket

resource "aws_s3_bucket" "buck_1" {
  bucket = var.var_1

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
} 



# Create VPC


resource "aws_vpc" "main" {
    cidr_block = var.var_2
}



# Create Subnet 

resource "aws_subnet" "sub_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.var_3

  tags = {
    Name = "subnet_by_terraform"
  }
}

resource "aws_subnet" "sub_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.var_4

  tags = {
    Name = "subnet_by_terraform"
  }
}


# Create Volume


resource "aws_ebs_volume" "dem_vol_1" {
  availability_zone = var.var_5[0]
  size              = 20

  tags = {
    Name = "Volume_by_terraform"
  }
}




# Create Snapshot

resource "aws_ebs_snapshot" "new_snapshot" {
  volume_id = aws_ebs_volume.dem_vol_1.id

  tags = {
    Name = "Snap_by_terraform"
  }
}

# Create AMI



# resource "aws_ami_from_instance" "example" {
#   name               = "terraform-ami"
#   source_instance_id = "i-0a7bf2bbe7aa4dbf1"
# }


# Create Internet Gateway

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}


# create Route Table

resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "terra_demo"
  }
}







