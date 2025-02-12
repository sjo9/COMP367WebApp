pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sjo9/COMP367WebApp.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'mvn jetty:run &'
            }
        }
    }
}