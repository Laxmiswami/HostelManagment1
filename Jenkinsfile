pipeline {
    agent any

    tools {
        maven 'MAVEN_HOME'   // Make sure Maven is set in Jenkins Global Tool Configuration
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
                // Example: copy WAR file to Tomcat (adjust path as per your server)
                sh 'cp target/*.war /opt/tomcat9/webapps/'
            }
        }
    }
}

