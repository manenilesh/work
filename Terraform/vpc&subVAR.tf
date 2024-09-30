# Create S3 Bucket
variable "var_1" {
    type = string 
    default = "my-tf-per-bucket"
  
}


# Create VPC

variable "var_2" {
    type = string 
    default = "10.10.0.0/16"
}

# Create subnet 1
variable "var_3" {
    type = string 
    default = "10.10.0.0/17"
}

# Subnet 2

variable "var_4" {
    type = string 
    default = "10.10.128.0/17"
  
}

# Create Volume

variable "var_5" {
    type = list 
    default = ["us-east-1a","us-east-1b","us-east-1c","us-east-1d"]
  
}




