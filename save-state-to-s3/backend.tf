
terraform {
backend "s3" {
    bucket = "nm-tf-s3-state"
    key = "terraform.tfstate"
    region = "us-east-1"
 
  }
}