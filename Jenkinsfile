pipeline{
    agent any

    triggers { pollSCM('* * * * *
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
