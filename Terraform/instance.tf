#     resource "aws_instance" "create_instance_terraform"{
#           
#           ami  = "ami-0c7217cdde317cfec"
#         instance_type = "t2.micro"
#         key_name = "mydemokey"
#         security_groups = ["sg-0ee4c99fc79983a37"]
#         subnet_id = "subnet-03ef1e6cccf475809"
#           user_data = <<EOF
#       #!/bin/bash
#       sudo -i
#       apt update
#       apt-get install apache2 -y
#       apt install unzip -y
#       apt install openjdk-11-jre-headless  -y
#       wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.tar.gz
#       tar -xzvf apache-tomcat-8.5.98.tar.gz
#       git clone https://github.com/manenilesh/Demo-Repo-Public.git
#       mv Demo-Repo-Public/student.war /root/apache-tomcat-8.5.98/webapps/
#       mv Demo-Repo-Public/mysql-connector.jar /root/apache-tomcat-8.5.98/lib/
#       sh apache-tomcat-8.5.98/bin/catalina.sh stop
#       sh apache-tomcat-8.5.98/bin/catalina.sh start
#       EOF
#         tags={
#          Name ="Final_insta"
#         }
#       
#       }