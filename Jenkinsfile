pipeline {
    agent any
    environment {
        IMAGE_TAG = "1.1.1"
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git credentialsId: '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',
                    url: 'https://github.com/yoursmanjunad/MyPortfolio.git',
                    branches: [[name: 'main']]
                }
            }
        }

        stage('Build Docker') {
            steps {
                script {
                    sh '''
                    echo 'Build Docker Image'
                    docker build -t manju2033/manju05:${IMAGE_TAG} .
                    '''
                }
            }
        }

        stage('Push Image') {
            steps {
                script {
                    sh '''
                    echo 'Pushing Image'
                    docker push manju2033/manju05:${IMAGE_TAG}
                    '''
                }
            }
        }
    }
}
