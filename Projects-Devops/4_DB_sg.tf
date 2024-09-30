
## Create Database Security Group 

 resource "aws_security_group" "database_sg" {
     name = "dbsg"
     description = "Allow inbound traffic form application layer"
     vpc_id = aws_vpc.vpc1.id
 
     ingress {
         description = "Allow inbound traffic from Application Layer"
         from_port =  3306
         to_port = 3306
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
     }  
 
     egress {
         description = "allow all outbound traffic"
         from_port = 32768
         to_port = 65535
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
     }
     tags = {
       Name = "Database-sg"
     }
 }