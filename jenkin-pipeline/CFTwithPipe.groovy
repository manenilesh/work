pipeline
{
    agent
    {
        label 'L1'
    }
    stages
   {
        stage('Get Template From Repo')
        {
            steps
            {
               git branch: 'main', url: 'https://github.com/manenilesh/Demo-Repo-Public.git'
                echo "Repo is Cloned"
            }
        }
        stage('Install CLI')
        {
            steps
            {
                sh '''
                 sudo apt update 
                 sudo apt install awscli -y
                   '''
            }
        }

        stage('Configure')
        {
            steps
            {
                 echo 'Hello'
            }
        }
         stage('Create CFT')
        {
            steps
            {
               sh '''
               aws cloudformation create-stack  --stack-name my-stack --template-body file:///home/ubuntu/workspace/Mission-possible/all-insta.yml --region us-east-1 
               '''
            }
        }
    }
}