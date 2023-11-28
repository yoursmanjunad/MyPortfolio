pipeline {
    agent any
    environment {
        IMAGE_TAG = "1.1.1"
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Use withCredentials to bind the GitHub token to the GITHUB_SECRET variable
                    withCredentials([string(credentialsId: 'GITHUB_SECRET', variable: 'GITHUB_SECRET')]) {
                        git url: 'https://github.com/yoursmanjunad/MyPortfolio.git', credentialsId: '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', branches: [[name: 'main']]
                    }
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
