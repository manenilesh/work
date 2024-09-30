pipeline
{
    agent
    {
        label 'n1'
    }
    stages
    {
        stage ('Clone')
        {
            steps
            {
                echo "Repo is Cloned"
                git 'https://github.com/swapnibrad/studentapp-ui.git'
            }
        }
        stage('Installation of maven')
        {
            steps
            {
                sh '''
                    echo "Maven is installed " 
                    sudo apt update 
                    sudo apt install  maven -y
                    '''
            }
        }
        stage('Extracting Maven')
        {
            steps
            {
                sh '''
                echo "File Extracting"
                sudo mvn clean
                sudo mvn package
                '''
            }
        }
        stage('Install Tomcat')
        {
            steps
            {
                sh '''
                    echo "Install Tomcat"
                    wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.zip
                    '''
            }
        }
        stage('Unzip')
        {
            steps
            {
                sh '''
                    echo "Unzip Tomcat"
                    sudo apt-get install unzip -y
                    unzip apache-tomcat-8.5.98.zip
                    '''
            }
        }
        stage('copy move')
        {
            steps
            {
                sh '''
                    echo "move website files"
                    sudo mv ./target/*.war ./apache-tomcat-8.5.98/webapps/student.war
                     sh ./apache-tomcat-8.5.98/bin/catalina.sh start
                    '''
            }
        }
    }
}