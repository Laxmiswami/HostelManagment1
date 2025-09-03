pipeline {
    agent any

    tools {
        maven 'Maven'   // Make sure Maven is configured in Jenkins Global Tool Configuration
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Laxmiswami/HostelManagment1.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
                echo 'Build successful'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
                echo 'Tests executed'
            }
        }

   
    }
}

