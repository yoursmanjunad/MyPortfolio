pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                }
            }

        stage('Build Docker') {
            steps {
                script {
                    echo 'Building Docker Image'
                    sh "docker build -t manju2033/manju05 ."
                }
            }
        }

        stage('Push Image') {
            steps {
                script {
                    echo 'Pushing Docker Image'
                    sh "docker push manju2033/manju05" 
                }
            }
        }
    }
}
