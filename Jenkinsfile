pipeline {
    agent any
    environment {
        SCANNER_HOME = tool 'sonar-scanner'
    }
    stages {
         stage('clean workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout') {
            steps {
                checkout scm
                }
            }
        stage("Sonarqube Analysis") {
            steps {
                withSonarQubeEnv('sonar-server') {
                    sh '''$SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=portfolio \
                    -Dsonar.projectKey=portfolio'''
                }
            }
        }
        stage('Build Docker') {
            steps {
                script {
                    echo 'Building Docker Image'
                    sh "sudo docker build -t manju2033/manju05 ."
                    sh 'sudo docker run -d -p 80:80 manju2033/manju05" 
                }
            }
        }
    }
}
