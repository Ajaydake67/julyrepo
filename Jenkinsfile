pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning code from GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("julyimage:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run("-d -p 8081:80")
                }
            }
        }
    }
}

