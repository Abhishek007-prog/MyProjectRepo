pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t nginx:v2 .'
            }
        }
        
        stage('Run container'){
            steps{
                echo 'Starting container'
                sh 'docker run nginx:v2'
            }
        }
    }
}
