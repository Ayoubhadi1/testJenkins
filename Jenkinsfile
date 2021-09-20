pipeline{
    agent any

    stages{
        stage("Build"){
            steps{
                echo 'building'
            }
        }

        stage("deploy"){
            steps{
                echo 'deploying'
            }
        }

    }

    post{
        always{
            cleanWs()
        }
    }
}
