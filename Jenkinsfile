pipeline{
    agent any
    
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
