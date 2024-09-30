provider "aws" {
    region     = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "WebPage" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b6b67c1be7bba1d9"
  security_groups=["sg-0b5dd69b20d3a3a06"]
  key_name= "delete"
  user_data = <<EOF
#!/bin/bash
sudo -i
apt update
apt-get install apache2 -y
apt install unzip -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/browny.zip
unzip browny.zip
cd browny-v1.0/
mv * /var/www/html/
EOF
count=1
tags = {
    Name = "WebPage"
  }