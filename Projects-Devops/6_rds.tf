 resource "aws_db_instance" "rds" {
     db_subnet_group_name = aws_db_subnet_group.rds_1.id
     engine = "mysql"
     db_name = "rds"
     allocated_storage = 8
     engine_version = "8.0.28"
     instance_class = "db.t2.micro"
     multi_az = true
     username = "nilesh"
     password = "12345678"    
     #parameter_group_name = "default.mysql5.7"
     vpc_security_group_ids = [aws_security_group.database_sg.id]
     skip_final_snapshot = true
 }
 
 
 
 ## Create RDS Subnet group
 
 resource "aws_db_subnet_group" "rds_1" {
     name = "subnetgroup"
     subnet_ids = [aws_subnet.private_1.id , aws_subnet.public_1.id]
 
     tags = {
         Name = "rds_1"
     }
 }