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
                    bat 'docker build -t project-a .'
                }
            }
        }
        
        // Remove or comment out the Push Docker Image stage
        /*
        stage('Push Docker Image') {
            steps {
                script {
                    bat 'docker push your-docker-repo/project-a'
                }
            }
        }
        */
    }
}
