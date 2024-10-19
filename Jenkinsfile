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
                sh 'mvn clean package'  // Use the correct Maven tool
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build --no-cache -t project-a .'
                }
            }
        }
    }
}
