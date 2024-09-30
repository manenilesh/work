variable "aws_instance_ami" {
  type = string
  default = "ami-0e731c8a588258d0d"
}

variable "aws_instance_type" {
  type = string
  default = "t2.small"
}

variable "aws_instance_key" {
  type = string
  default = "mydemokey"
}


variable "aws_instance_public_address" {
  type = string
  default = "false"
}

variable "aws_instance_Tags" {
  type = string
  default = "Module_Insta"
}

variable "aws_security_group_Name" {
  type = string
  default = "demo_sg"
}

variable "aws_instance_sg_vpc" {
  type = string
}

variable "aws_instance_subnet_1" {
  type = string
}



# variable "aws_vpc_CIDR" {
#   type = string
#   default = "10.10.0.0/16"
# }
# variable "aws_vpc_Tags" {
#   type = string
#   default = "EC2_VPC__1"
# }
# 
# 
# 
# 
# variable "aws_vpc_subnet_1_CIDR" {
#   type = string
#   default = "10.10.0.0/18"
# }
# variable "aws_vpc_subnet_1_Tags" {
#   type = string
#   default = "EC2_subnet1"
# }
# 
# 
# 
# variable "aws_vpc_subnet_2_CIDR" {
#   type = string
#   default = "10.10.128.0/18"
# }
#  variable "aws_vpc_subnet_2_Tags" {
#   type = string
#   default = "EC2_subnet2"
# }
# 
# variable "aws_vpc_IGW_Tags" {
#   type = string
#   default = "EC2_IGW1"
# }
# 
# variable "aws_vpc_route_table_CIDR" {
#   type = any
#   default = "0.0.0.0/0"
# }
# 
# variable "aws_vpc_RouteTable_Tags" {
#   type = string
#   default = "EC2_OptionalRoute"
# }