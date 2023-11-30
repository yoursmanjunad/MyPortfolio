pipeline {
    agent any
    environment {
        IMAGE_TAG = "1.1.1"
    }

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
                    sh "sudo docker build -t manju2033/manju05:${IMAGE_TAG} ."
                }
            }
        }

        stage('Push Image') {
            steps {
                script {
                    echo 'Pushing Docker Image'
                    sh "sudo docker push manju2033/manju05:${IMAGE_TAG}"
                }
            }
        }
    }
}
