pipeline{
    agent any

    stages{
        stage("Build"){
            steps{
                echo 'building'
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