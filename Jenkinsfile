pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git', credentialsId: 'wilsonbolledula/******'
            }
        }
        
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build --no-cache -t project-a .'
                }
            }
        }
        
        // Remove or comment out the Push Docker Image stage if you don't need it
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

