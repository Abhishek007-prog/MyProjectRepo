pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t nginx-new:v3 .'
            }
        }
        
        stage ('Push to docker registry'){
            steps{
                sh 'docker login --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD'
                sh 'docker tag nginx-new:v3 mydocker070707/nginx:latest'
                sh 'docker push mydocker070707/nginx:latest'
            }
        }
        stage('Deploy'){
            steps{
                echo 'Starting container'
                sh 'docker run -itd -p 90:80 nginx-new:v3'
            }
        }
    }
}
