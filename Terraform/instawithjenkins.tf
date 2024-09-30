# resource "aws_instance" "create_new_jenkins_instance"{
#     
#     ami  = "ami-0c7217cdde317cfec"
#   instance_type = "t2.micro"
#   key_name = "mydemokey"
#   security_groups = ["sg-0ee4c99fc79983a37"]
#   subnet_id = "subnet-0c0d1f145678ab64d"
#     user_data = <<EOF
# #!/bin/bash
# sudo -i
# apt update
# apt install unzip -y
# apt install openjdk-11-jre-headless  -y
# sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
#   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
# echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
#   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
#   /etc/apt/sources.list.d/jenkins.list > /dev/null
# sudo apt-get update
# sudo apt-get install jenkins -y 
# EOF
#   tags={
#    Name ="jenkins_insta"
#  }

#}