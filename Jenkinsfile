pipeline {
    agent any

    tools {
        maven 'Maven_3.x'  // Specify the Maven version configured in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git', credentialsId: 'wilsonbolledula/******'
            }
        }

        stage('Build') {
            steps {
                // Use 'bat' instead of 'sh' for Windows
                bat 'mvn clean package'  // Use the correct Maven tool
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Use 'bat' to run Windows commands
                    bat 'docker build --no-cache -t project-a .'
                }
            }
        }
    }
}
