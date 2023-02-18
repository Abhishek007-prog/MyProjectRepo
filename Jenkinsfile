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
                sh 'sudo docker login --username=mydocker070707 --password=dckr_pat_6l6e-8FjwknEHpkxhm004KTYjAY'
                sh 'sudo docker tag nginx-new:v3 mydocker070707/abhishek/nginx:latest'
                sh 'sudo docker push mydocker070707/abhishek/nginx:latest'
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
