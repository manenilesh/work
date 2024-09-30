pipeline {
    agent { 
        label 'n1' 
        }
    stages {
        stage('git commit') {
            steps {
                echo 'clone repositery consist of build packages'
                git 'https://github.com/swapnibrad/studentapp-ui.git'
                  }
             }
        stage('build') {
            steps {
                sh '''
                echo "installing maven package for build"
                sudo apt update
                sudo apt install maven -y
                echo "creating package from maven"
                sudo mvn clean 
                sudo mvn package
                '''
            }
        }
        stage('artifacts') {
            steps {
            sh '''
            echo 'added artifacts in bucket'
            sudo apt install awscli -y
            sudo aws s3 cp ./target/studentapp-2.2-SNAPSHOT.war  s3://the.s3.copy.cat.bucket/
            '''
             }
           }
        stage('application') {
            steps {
            sh '''
              echo "install tomcat-server"
              wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.zip
              sudo apt-get install unzip -y
              unzip apache-tomcat-8.5.98.zip
              sudo aws s3 cp s3://the.s3.copy.cat.bucket/studentapp-2.2-SNAPSHOT.war  ./apache-tomcat-8.5.98/webapps/student.war
            
               sh ./apache-tomcat-8.5.98/bin/catalina.sh start
            '''
            }
        }
        stage('pull repo') 
        {
            steps {
            echo 'pull github repositery'

            }
        }
    }
}