pipeline{
    agent any
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