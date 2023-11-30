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
                    withCredentials([string(credentialsId: 'GITHUB_CICD', variable: 'GITHUB_CICD')]) {
                        git url: 'https://github.com/yoursmanjunad/MyPortfolio.git', credentialsId: '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', branches: [[name: 'main']]
                    }
                }
            }
        }

        stage('Build Docker') {
            steps {
                script {
                    echo 'Building Docker Image'
                    sh "docker build -t manju2033/manju05:${IMAGE_TAG} ."
                }
            }
        }

        stage('Push Image') {
            steps {
                script {
                    echo 'Pushing Docker Image'
                    sh "docker push manju2033/manju05:${IMAGE_TAG}"
                }
            }
        }
    }
}
