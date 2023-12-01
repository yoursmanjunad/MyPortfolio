pipeline {
    agent any
    tools {
        jdk 'jdk17'
        nodejs 'node16'
    }
    environment {
        SCANNER_HOME = tool 'Sonar-Scanner'
    }
    stages {
         stage('clean workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/yoursmanjunad/MyPortfolio.git'
                }
            }
        stage("Sonarqube Analysis") {
            steps {
                withSonarQubeEnv('Sonar-Scanner') {
                    sh '''$SCANNER_HOME/bin/Sonar-Scanner -Dsonar.projectName=portfolio \
                    -Dsonar.projectKey=portfolio'''
                }
            }
        }
        stage("quality gate") {
            steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'Sonar-Qube'
                }
            }
        }
        stage('Install Dependencies') {
            steps {
                sh "npm install"
            }
        }
        stage('Build Docker') {
            steps {
                script {
                    echo 'Building Docker Image'
                    sh "sudo docker build -t manju2033/manju05 ."
                    
                }
            }
        }
    }
}
