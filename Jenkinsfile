pipeline{
    agent any


tools {
    maven 'maven',
    docker 'docker'
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
                sh 'docker build -t my-app:1.0 .'
            }
        }

    }

    
}
