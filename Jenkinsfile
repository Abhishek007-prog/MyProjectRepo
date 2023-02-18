pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t nginx-new:v3 .'
            }
        }
        
        stage('Run container'){
            steps{
                echo 'Starting container'
                sh 'docker run -itd -p 90:80 nginx:v3'
            }
        }
    }
}
