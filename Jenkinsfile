pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git', credentialsId: 'wilsonbolledula/*******'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Ensure you have defined variables if needed
                    def imageName = "project-a"
                    bat "docker build -t ${imageName} ."
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    bat "docker push your-docker-repo/project-a"
                }
            }
        }
    }
}
