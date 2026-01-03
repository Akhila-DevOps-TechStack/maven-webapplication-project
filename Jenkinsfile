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
        

        stage ('build') {
            steps {
                sh 'mvn clean package'
            }
        }

         stage ('SonarQube Report') {
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
                    curl -u $TOMCAT_USER:$TOMCAT_PASS \
            --upload-file target/maven-web-application.war \
            "http://3.111.33.244:8080/text/deploy?path=/maven-web-application&update=true"
        """
            }
        }
    }
    }

    
    

