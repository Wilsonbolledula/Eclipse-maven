pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'wilsonbolledula', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git'
            }
        }
        stage('Build') {
            steps {
                // Your build steps go here
                echo 'Building...'
            }
        }
    }
}
