pipeline {
    agent any

    tools {
        maven 'MAVEN_HOME'   // Make sure Maven is configured in Jenkins Global Tool Configuration
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

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // Example: copy WAR file to Tomcat webapps folder
                sh 'cp target/*.war /opt/tomcat9/webapps/'
            }
        }
    }
}

