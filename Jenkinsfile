pipeline {
    agent any 
    tools {
        maven "maven"
    }
    try {

        // Notify START
        slackSend(
            channel: '#scripted-pipeline-notifier',
            tokenCredentialId: 'e6498867-65cd-4e32-af88-c520b4634da7',
            color: '#FFFF00',
            message: "🚀 Pipeline Started: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
        )
        stages {
           stage ('checkout stage') {
              steps {
                   git branch: 'dev', url: 'https://github.com/Akhila-DevOps-TechStack/maven-webapplication-project.git'
                } // step ending
            }//stage ending
        
            stage ('bulid') {
                steps {
                    sh 'mvn clean package'
                }
            }
            stage ('sonarQube Report') {
                steps {
                    sh 'mvn sonar:sonar'
                }
            }
            stage ('deploy in Nexus') {
                steps {
                   sh 'mvn deploy'
                }
            }
            stage ('deploy in Tomcat') {
                steps {
                    sh """
                    curl -u akhila:laxmi \
                    --upload-file /var/lib/jenkins/workspace/Declarative-pipeline-job/target/maven-web-application.war\
                    "http://13.200.242.26:8080/manager/text/deploy?path=/maven-web-application&update=true"
                    """
                }
            }
            // Notify SUCCESS
            slackSend(
                channel: '#scripted-pipeline-notifier',
                tokenCredentialId: 'e6498867-65cd-4e32-af88-c520b4634da7',
                color: "#278EF5",
                message: "✅ SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
            )

        
            catch (err) {

                // Notify FAIL
                slackSend(
                   channel: '#scripted-pipeline-notifier',
                   tokenCredentialId: 'e6498867-65cd-4e32-af88-c520b4634da7',
                   color: "#FF0000",
                   message: "❌ FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}\nError: ${err}"
                )

                // Fail the build
                throw err
            }
        }   
    } // stages ending
} // pipeline endindg
