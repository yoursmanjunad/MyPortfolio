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
                    sh "docker login -u manju2033 -p Manjunath_2003@"
                    sh "docker push manju2033/manju05"
                    sh "docker logout"
                }
            }
        }
    }
}
