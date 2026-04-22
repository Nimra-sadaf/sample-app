# sample-app

pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/abc/sample-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t my-app .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 8081:8080 my-app'
            }
        }
    }
}

paste this in jenkins pipeline and replace this with the github link 
