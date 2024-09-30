#resource "aws_instance" "webpage_insta" {
#    ami = "ami-0c7217cdde317cfec"
#    instance_type = "t2.micro"
#    key_name = "mydemokey"
#    subnet_id = "subnet-0c0d1f145678ab64d"
#    security_groups = ["sg-0ee4c99fc79983a37"]
#    user_data = <<EOF
##!/bin/bash
#sudo -i
#apt update
#apt-get install apache2 -y
#apt install unzip -y
#wget https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip
#unzip little-fashion.zip
#cd 2127_little_fashion
#mv * /var/www/html/
#EOF
#    count = 1
#    tags = {
#      Name = "Webpage"
#    }

#}


