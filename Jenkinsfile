pipeline{
    agent any

    stages{
        stage("Build"){
            steps{
                sh "mvn -version"
                sh "mvn clean install"
            }
        }

        stage("deploy"){
            echo 'deploying'
        }

    }

    post{
        always{
            cleanWs()
        }
    }
}