pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    environment {
        GITHUB_TOKEN = credentials('Github-PAT')
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sjo9/COMP367WebApp.git', credentialsId: 'Github-PAT']])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {
                script {
                    sh 'docker build -t sjo9/devops-integration .'
                }
            }
        }
        stage('Push image to Hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'DOCKERHUB_PASSWORD')]) {
                        sh 'echo $DOCKERHUB_PASSWORD | docker login -u sjo9 --password-stdin'
                    }
                    sh 'docker push sjo9/devops-integration'
                }
            }
        }
    }
}
