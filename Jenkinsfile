pipeline{
    agent any

    triggers { pollSCM('H/60 * * * *
    ') }
    
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
