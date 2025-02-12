pipeline {
    agent any
    environment {
        GIT_REPO = 'https://github.com/sjo9/COMP367WebApp.git'
        GIT_BRANCH = 'main'
    }
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-credential', branch: "${GIT_BRANCH}", url: "${GIT_REPO}"
            }
        }
        stage('Build') {
            steps {
                sh '/usr/local/bin/mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh '/usr/local/bin/mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh '/usr/local/bin/mvn jetty:run &'
            }
        }
    }
}
