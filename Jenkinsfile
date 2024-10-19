pipeline {
    agent any

    tools {
        maven 'Maven_3.x'  // Ensure Maven version 'Maven_3.x' is configured in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                // Specify Git branch, URL, and credentials ID
                git branch: 'main', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git', credentialsId: 'your-credential-id-here'
            }
        }

        stage('Build') {
            steps {
                // Use 'bat' for Windows commands
                bat 'mvn clean package'  // Executes Maven clean and package
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Use 'bat' for Windows command to build Docker image
                    bat 'docker build --no-cache -t project-a .'
                }
            }
        }
    }
}
