
variable "aws_vpc_CIDR" {
  type = string
  default = "100.100.0.0/16"
}
variable "aws_vpc_Tags" {
  type = string
  default = "VPC_VPC_1"
}




variable "aws_vpc_subnet_1_CIDR" {
  type = string
  default = "100.100.0.0/17"
}
variable "aws_vpc_subnet_1_Tags" {
  type = string
  default = "VPC_subnet1"
}



variable "aws_vpc_subnet_2_CIDR" {
  type = string
  default = "100.100.128.0/17"
}
variable "aws_vpc_subnet_2_Tags" {
  type = string
  default = "VPC_subnet2"
}

variable "aws_vpc_IGW_Tags" {
  type = string
  default = "VPC_IGW1"
}

variable "aws_vpc_route_table_CIDR" {
  type = any
  default = "0.0.0.0/0"
}

variable "aws_vpc_RouteTable_Tags" {
  type = string
  default = "VPC_OptionalRoute"
}