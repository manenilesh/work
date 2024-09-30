## Create Ec2 Instance 
resource "aws_instance" "create_instance_terraform"{
    
    ami  = var.aws_instance_ami
  instance_type = var.aws_instance_type
  key_name = var.aws_instance_key
  security_groups = [aws_security_group.sg_demo.id]
  subnet_id = var.aws_instance_subnet_1
  associate_public_ip_address = var.aws_instance_public_address
 user_data = <<EOF
#!/bin/bash
sudo -i
apt update
apt-get install apache2 -y
apt install unzip -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip
unzip finexo.zip
cd finexo-html
mv * /var/www/html/
EOF
  
    tags={
     Name = var.aws_instance_Tags
    }
  
  }

 

 ## Create Security group

resource "aws_security_group" "sg_demo" {
  name        = var.aws_security_group_Name
  vpc_id      = var.aws_instance_sg_vpc


ingress {
        from_port         = 80
        to_port           = 80
        protocol       = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        }
ingress {
        from_port         = 22
        to_port           = 22
        protocol       = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        }
ingress{      
        from_port         = 8080
        to_port           = 8080
        protocol       = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        }
        }



# ## Create VPC 
# 
# resource "aws_vpc" "aws_instance_vpc" {
#     cidr_block = var.aws_vpc_CIDR
# 
# tags = {
#     Name = var.aws_vpc_Tags
#   }
# }
# 
# 
# # Subnet 1
# 
# resource "aws_subnet" "aws_instance_subnet_1" {
#   vpc_id     = aws_vpc.aws_instance_vpc.id
#   cidr_block = var.aws_vpc_subnet_1_CIDR
# 
#   tags = {
#     Name = var.aws_vpc_subnet_1_Tags
#   }
# }
# 
# 
# # Subnet 2

#  resource "aws_subnet" "aws_instance_subnet_2" {
#    vpc_id     = aws_vpc.aws_instance_vpc.id
#    cidr_block = var.aws_vpc_subnet_2_CIDR
#  
#  tags = {
#      Name = var.aws_vpc_subnet_2_Tags
#    }
#  }
#  
#  
#  
#  # Create Internet Gateway
#  
#  resource "aws_internet_gateway" "aws_instance_VPC_IGW" {
#    vpc_id = aws_vpc.aws_instance_vpc.id
#  
#    tags = {
#      Name = var.aws_vpc_IGW_Tags
#    }
#  }
#  
#  
#  
#  # create Route Table
#  
#  resource "aws_route_table" "aws_instance_VPC_routetable" {
#    vpc_id = aws_vpc.aws_instance_vpc.id
#  
#    route {
#    cidr_block = var.aws_vpc_route_table_CIDR 
#    gateway_id = aws_internet_gateway.aws_instance_VPC_IGW.id
#  }
# 
#  tags = {
#    Name = var.aws_vpc_RouteTable_Tags
#  }
# 
# 
# esource "aws_main_route_table_association" "aws_instance_VPC_set_main_route" {
#  vpc_id         = aws_vpc.aws_instance_vpc.id
#  route_table_id = aws_route_table.aws_instance_VPC_routetable.id
# 
# 
# 
# 
# 
# 
# # AMI
# 
# 
# esource "aws_ami_from_instance" "ami_example" {
#  name               = "terraform-ami"
#  source_instance_id = aws_instance.create_instance_terraform.id
# 
# 
# 
# # Volume 

# resource "aws_ebs_volume" "dem_vol_1" {
#   availability_zone = "us-east-1a"
#   size              = 20
# 
#   tags = {
#     Name = "Volume_by_terraform"
#   }
# }
# 
# 
# 
# ## Snapshot
# 
# 
# resource "aws_ebs_snapshot" "new_snapshot" {
#   volume_id = aws_ebs_volume.dem_vol_1.id
# 
#   tags = {
#     Name = "Snap_by_terraform"
#   }
# }



