pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/username/repository-name.git'
            }
        }
        stage('Build') {
            steps {
                // Build the Maven project
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    // Build the Docker image
                    def app = docker.build("username/wilson:${env.BUILD_ID}")
                }
            }
        }
        stage('Docker Push') {
            steps {
                script {
                    // Push Docker image to registry
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-credentials-id') {
                        app.push("${env.BUILD_ID}")
                        app.push('latest')
                    }
                }
            }
        }
        stage('Cleanup') {
            steps {
                // Clean up old images
                sh 'docker rmi username/wilson:${env.BUILD_ID}'
            }
        }
    }
}
