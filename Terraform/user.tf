resource "aws_iam_user" "U1" {
  name = "User_1"
  path = "/system/"

  tags = {
    User = "First-USer"
  }
}



resource "aws_iam_group" "G1" {
  name = "Group_1"
}





resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.U1.name

  groups = [
    aws_iam_group.G1.name,
  ]
}





