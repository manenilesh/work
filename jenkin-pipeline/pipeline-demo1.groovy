pipeline
{
    agent any
    stages
    {
        stage ('Creete File')
        {
            steps
            {
                sh ''' 
                    echo "Hiii" >> F1.txt
                    '''
            }
        }
        stage('Craete Directory')
        {
            steps
            {
                sh ''' 
                    mkdir Dir
                    '''
            }
        }
    }
}