pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t julyimage .'
            }
        }
        stage('Run Docker Container') {
    steps {
        sh '''
            # Remove existing container if it exists
            docker rm -f julycontainer || true

            # Run new container
            docker run -d -p 8081:80 --name julycontainer julyimage
        '''
    }
}
