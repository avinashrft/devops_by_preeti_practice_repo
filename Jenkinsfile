pipeline{
    agent any
    tools{
           jdk 'my_java'
           maven 'my_maven'
         }
    stages{
        stage('compile'){
            steps{
                echo "Compile the code...."
                sh "mvn compile"
            }
        }
        stage('Unit Test'){
            steps{
                echo "Unit test...."
                sh "mvn test"
            }
        }
        stage('Package'){
            steps{
                echo "Package the code...."
                sh "mvn package"
            }
        }
    }
}