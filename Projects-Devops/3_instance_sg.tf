
## Create Instance Security Group 

resource "aws_security_group" "instance_sg" {
    name = "instasg"
    description = "Allow inbound traffic"
    vpc_id = aws_vpc.vpc1.id

    ingress {
        description = "Allow ssh Traffic"
        from_port =  22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }  

    ingress {
        description = "Allow ssh Traffic"
        from_port =  80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "allow all outbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
      Name = "instance-sg"
    }
}