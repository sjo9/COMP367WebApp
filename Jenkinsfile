pipeline {
    agent any
    environment {
        // 필요한 환경 변수 추가 (예: GitHub 인증 토큰)
        GIT_REPO = 'https://github.com/sjo9/COMP367WebApp.git'
        GIT_BRANCH = 'main'  // 브랜치를 명시적으로 설정
    }
    stages {
        stage('Checkout') {
            steps {
                // 자격 증명 ID를 사용하여 GitHub 저장소에서 가져오기
                git credentialsId: 'github-credential', branch: "${GIT_BRANCH}", url: "${GIT_REPO}"
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'  // Maven을 사용한 빌드
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'  // Maven을 사용한 테스트
            }
        }
        stage('Deploy') {
            steps {
                sh 'mvn jetty:run &'  // Jetty 서버 실행
            }
        }
    }
}
