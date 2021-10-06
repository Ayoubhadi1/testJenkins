pipeline{
    agent any


tools {
    maven 'maven'
    }

    stages{
        stage("Build"){
            steps{
                sh 'mvn -version'
                sh 'mvn compile test package'
                sh 'mv target/*.jar target/my-app.jar'
            }
        }

        stage("Docker"){
            steps{
                script {
                          docker.build registry + ":$BUILD_NUMBER"
                        }
            }
        }

    }

    
}
