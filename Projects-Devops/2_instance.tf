
## Create 2 Instances 
# instance 1

resource "aws_instance" "instance_1" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "mydemokey"
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  subnet_id = aws_subnet.public_1.id
  associate_public_ip_address = true
  user_data = "${file("userdata1.sh")}"
  tags = {
    Name = "Instance1"
  }
}

# instance 2

resource "aws_instance" "instance_2" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  availability_zone = "us-east-1c"
  key_name = "mydemokey"
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  subnet_id = aws_subnet.private_1.id
  associate_public_ip_address = false
  user_data = "${file("userdata2.sh")}"
  tags = {
    Name = "Instance2"
  }
}
