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
                    // Build the Docker image and store it in the app variable
                    app = docker.build(java)
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    docker.withRegistry('https://wilsonbolledula/v1/', 'dockerhub') {
                        app.push() // Use the app variable to push the image
                    }
                }
            }
        }
    }
}