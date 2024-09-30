resource "aws_security_group" "sg_demo" {
  name        = "demo_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.aws_instance_vpc.id


ingress {
        from_port         = 80
        to_port           = 80
        protocol       = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        }
ingress {
        from_port         = 22
        to_port           = 22
        protocol       = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        }
ingress{      
        from_port         = 8080
        to_port           = 8080
        protocol       = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        }
        }
