pipeline {
    agent any
    tools {
        maven "maven3.9.9"
    }

    stages {
        stage ('checkout stage') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/Akhila-DevOps-TechStack/maven-webapplication-project.git'
            }
            }
        }

        stage ('build') {
            steps {
                sh 'mvn clean package'
            }
        }

        /* stage ('SonarQube Report') {
            steps {
                sh 'mvn sonar:sonar'
            }
        } */

        /*stage ('deploy in Nexus') {
            steps {
                sh 'mvn deploy'
            }
        }*/

        stage ('deploy in Tomcat') {
            steps {
                sh """
                    curl -u $TOMCAT_USER:$TOMCAT_PASS \
            --upload-file target/maven-web-application.war \
            "http://3.111.33.244:8080/text/deploy?path=/maven-web-application&update=true"
        """
            }
        }
    }

/*   post {
        always {
            slackSend(
                channel: '#scripted-pipeline-notifier',
                tokenCredentialId: 'e6498867-65cd-4e32-af88-c520b4634da7',
                color: '#FFFF00',
                message: "🚀 Pipeline Started: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
            )
        }

        success {
            slackSend(
                channel: '#scripted-pipeline-notifier',
                tokenCredentialId: 'e6498867-65cd-4e32-af88-c520b4634da7',
                color: "#278EF5",
                message: "✅ SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
            )
        }

        failure {
            slackSend(
                channel: '#scripted-pipeline-notifier',
                tokenCredentialId: 'e6498867-65cd-4e32-af88-c520b4634da7',
                color: "#FF0000",
                message: "❌ FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
            )
        }
    }
    */
}
