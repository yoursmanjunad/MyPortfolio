pipeline {
    agent any
    stages{
        stage('Build Docker') {
            steps {
                script {
                    echo 'Building Docker Image'
                    sh "sudo docker build -t manju2033/manju05 ."
                }
            }
        }
        stage('DOcker Run'){
              steps{
                  script{
                      echo 'Running Docker Image'
                      sh 'sudo docker run -d -p 8000:80 manju2033/manju05'
    }
}

              }}}        
