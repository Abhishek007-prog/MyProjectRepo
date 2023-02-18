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
                sh 'docker login https://hub.docker.com/repository/docker/mydocker070707/abhishek/general --username=mydocker070707 --password=dckr_pat_6l6e-8FjwknEHpkxhm004KTYjAY'
                sh 'docker tag -t nginx:latest'
                sh 'docker push mydocker070707/abhishek:v1'
            }
        }
        stage('Run container'){
            steps{
                echo 'Starting container'
                sh 'docker run -itd -p 90:80 nginx-new:v3'
            }
        }
    }
}
