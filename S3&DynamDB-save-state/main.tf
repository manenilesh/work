terraform {
  backend "s3" {
    bucket                  = "nm-tf-s3-state"
    dynamodb_table          = "terraform-state-lock-dynamo"
    key                     = "terraform.tfstate"
    region                  = "us-east-1"
    profile = "nileshmane"
}
}


provider "aws" {
  region                  = "us-east-1"
  profile = "nileshmane"
}