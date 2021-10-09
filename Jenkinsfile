pipeline{
    agent any


tools {
    maven 'maven'
    }

    stages{
       stage('Initialize') {
                    steps{
                        script {
                            def dockerHome = tool 'docker'
                            env.PATH = "${dockerHome}/bin:${env.PATH}"
                        }
                    }
        }
        stage("Build"){
            steps{
                sh 'mvn -version'
                sh 'mvn compile test package'
                /*sh 'mv target/*.jar target/my-app.jar'*/
            }
        }

        stage("Docker"){
            steps{
                script{
                    sh 'docker build -t my-app:1.0 .'
                }
                
            }
        }

    }

    
}
