pipeline {
    agent any

    tools {
        maven 'Maven_3.x'  // Ensure this matches the Maven installation in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git', credentialsId: 'your-credential-id-here'
            }
        }

        stage('Build') {
            steps {
                // Use 'withMaven' to ensure Maven is correctly set up
                withMaven(maven: 'Maven_3.x') {
                    bat 'mvn clean package'
                }
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
