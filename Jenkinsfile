pipeline{
    agent none
    tools{
           jdk 'my_java'
           maven 'my_maven'
         }
    stages{
        stage('compile'){
            agent any
            steps{
                echo "Compile the code...."
                sh "mvn compile"
            }
        }
        stage('Unit Test'){
            agent any
            steps{
                echo "Unit test...."
                sh "mvn test"
            }
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Package'){
            agent {label 'linux_slave'}
            steps{
                echo "Package the code...."
                sh "mvn package"
            }
        }
    }
}