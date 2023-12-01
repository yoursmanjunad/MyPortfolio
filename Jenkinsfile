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

        stage('Login AWS'){
            steps{
                script{
                    echo 'Logging into AWS'
                    sh 'aws configure'
                    

        stage('Push Image') {
            steps {
                script {
                    echo 'Pushing Docker Image'
                    sh "aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/r7s3o8z4"
                    sh "docker tag portfolio-manjunath:latest public.ecr.aws/r7s3o8z4/portfolio-manjunath:latest"
                    sh "docker push public.ecr.aws/r7s3o8z4/portfolio-manjunath:latest" 
                }
            }
        }
    }
}
