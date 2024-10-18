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
stage('Build') {
    steps {
        script {
            sh 'mvn clean package' // Adjust according to your build tool
        }
    }
}
stage('Test') {
    steps {
        script {
            sh 'mvn test' // Replace with your testing command
        }
    }
}
stage('Docker Build') {
    steps {
        script {
            sh 'docker build -t your-image-name:latest .' // Replace with your Docker command
        }
    }
}

stage('Docker Push') {
    steps {
        script {
            sh 'docker push your-image-name:latest' // Replace with your Docker command
        }
    }
}
