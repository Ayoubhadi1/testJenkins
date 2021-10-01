pipeline{
    agent any

    properties([pipelineTriggers([pollSCM('H * * * *')])])
    
tools {
    maven 'maven'
    }

    stages{
        stage("Build"){
            steps{
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }

    }

    post{
        always{
            cleanWs()
        }
    }
}
