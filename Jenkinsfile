pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t nginx:v1 .'
            }
        }
    }
}
