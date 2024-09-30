resource "aws_iam_user" "demo_u1" {
  name = var.demo_u1
  path = "/"

  tags = {
    variable = "string_demo"
  }
}

variable "demo_u1" {
    type = string
    default = "var_user_1_a"
}


resource "aws_iam_user" "demo_u2" {
  name = "var_user_1_b"
  path = "/"
}