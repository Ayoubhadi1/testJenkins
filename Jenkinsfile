pipeline{
    agent any

    environment {
    		DOCKERHUB_CREDENTIALS=credentials('dockerpass')
    	}


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

        stage("build Docker image"){
            steps{
                script{
                    sh 'docker build -t my-app:1.0 .'
                }
                
            }
        }

        stage('Login') {

        			steps {
        				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password $DOCKERHUB_CREDENTIALS_PSW'
        			}
        }

        stage('Push') {

        			steps {
                        sh 'docker tag my-app:1.0 ayoubhadi123/my-app:1.0'
        				sh 'docker push my-app:1.0'
        			}
        		}

    }

    
}
