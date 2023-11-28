pipeline {
    agent any
    environment {
        IMAGE_TAG = "1.1.1"
        GITHUB_SECRET = credentials('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')
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git credentialsId: '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',
                    url: 'https://github.com/yoursmanjunad/MyPortfolio.git',
                    branches: [[name: 'main']],
                    // Use the GitHub token for authentication
                    credentials: GITHUB_SECRET
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
