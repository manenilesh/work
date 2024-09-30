# install docker packege
    - # Add Docker's official GPG key:
     sudo apt-get update
     sudo apt-get install ca-certificates curl
     sudo install -m 0755 -d /etc/apt/keyrings
     sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
     sudo chmod a+r /etc/apt/keyrings/docker.asc

     # Add the repository to Apt sources:
     echo \
       "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
       $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
       sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
     sudo apt-get update
     
    - sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# install docker-compose and git package
    - apt install docker-compose -y
    - apt install git -y
         then(git init , git clone url of docker-compose repo)
# Clone the docker-compose repo with commands
    - git init
    - git clone https://github.com/pranaypatil01/docker-compose.git
# Follow steps>>>
# First Go to mysql folder and run the docker-compose file with command
    - docker-compose up -d
       (if you run this command automatically create mysql container)
# Second get the container id with command 
    - docker ps (get mysql container id) and next command
    - docker inspect mysql_container_id
         (copy ip address of mysql)
# Go back to docker-compose folder and go to backend folder and run command
    - vim context.xml
     (enter ip address save and exit)
# Next go back to docker-compose folder and frontend folder and run commnad
    - vim index.html 
       (replace existing ip address with your instance ip address)
# Next go back to docker-compose folder and run the docker-compose file with command
    - docker-compose up -d
# You create 2 containers first is tomcat and second is httpd check  the containers with command
    - docker ps
# Done you have created total three container 
    -mysql
    -tomcat
    -httpd
    (Your three tier project is done with docker-compose)
# Hit the instance public ip address (#no mention any port) 
    - to see AWS page then click on "Enter to student app" you forwarded in studentapp page then enter some data to see your database also working\
# Thank you....
    
     
