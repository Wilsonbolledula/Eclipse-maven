pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'wilsonbolledula/*******', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Assuming you have a Dockerfile in the root of your project
                    def app = docker.build("your-image-name:${env.BUILD_ID}")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
                        app.push()
                    }
                }
            }
        }
    }
}