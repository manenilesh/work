resource "aws_iam_user" "User_1" {
    name = var.demo_1
    path = "/"
}

variable "demo_1" {
    type = string
  default =   "user_1"
}


resource "aws_iam_user" "User_2" {
    name = var.demo_2
    path = "/"
}

variable "demo_2" {
    type = string
  default =   "user_2"
}


resource "aws_iam_user" "User_3" {
    name = var.demo_3
    path = "/"
}

variable "demo_3" {
    type = string
  default =   "user_3"
}

