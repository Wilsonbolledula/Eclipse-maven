pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github-pat', url: 'https://github.com/Wilsonbolledula/Eclipse-java.git'
            }
        }
        // Other stages like Build, Test, Docker Build, etc.
    }
}
