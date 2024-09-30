#resource "aws_instance" "create_instance_terraform"{
#    
#    ami  = var.aws_instance_ami
#  instance_type = var.aws_instance_type
#  key_name = var.aws_instance_key
#  security_groups = [aws_security_group.sg_demo.id]
#  subnet_id = aws_subnet.aws_instance_subnet_1.id
#  associate_public_ip_address = var.aws_instance_public_address
#   user_data = <<EOF
#   #!/bin/bash
#   sudo -i
#   apt update
#   apt-get install apache2 -y
#   apt install unzip -y
#   wget https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip
#   unzip finexo.zip
#   cd finexo-html
#   mv * /var/www/html/
#   EOF
#     tags={
#      Name ="Final_insta"
#     }
#   
#   }
#
#}




