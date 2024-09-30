
# resource "aws_db_instance" "my_db" {

#   db_name              = var.DB-demo_name
#   engine               = var.DB-demo_engine
#   engine_version       = var.DB-demo_version
#   allocated_storage    = var.DB-demo_storage
#   instance_class       = var.DB-demo_class
#   username             = var.DB-demo_name
#   password             = var.DB-demo_pass

#   vpc_security_group_ids = [aws_security_group.db_sg.id]

#   publicly_accessible = var.DB-demo_public_access

# }

# resource "aws_security_group" "db_sg" {
#   name = var.DB-demo_sg_name

#   ingress {
#     from_port = 3306
#     to_port   = 3306
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Replace with specific allowed CIDRs
#   }

#   egress {
#     from_port = 0
#     to_port   = 0
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }