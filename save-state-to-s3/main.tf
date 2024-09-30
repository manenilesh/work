
  terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "3.0"
      }
    }
  
}

provider "aws" {
  profile = "nileshmane"
}

resource "aws_instance" "create_instande_terraform"{
    
    ami  = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "mydemokey"
  security_groups = ["sg-0ee4c99fc79983a37"]
  subnet_id = "subnet-0c0d1f145678ab64d"
    user_data = <<EOF
#!/bin/bash
sudo -i
apt update
apt-get install apache2 -y
apt install unzip -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip
unzip finexo.zip
cd finexo-html
mv * /var/www/html/
EOF
  tags={
   Name ="Final_insta"
  }

}