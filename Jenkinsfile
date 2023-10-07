pipeline{
    agent none
    tools{
           jdk 'my_java'
           maven 'my_maven'
         }
    environment{
        DEV_SERVER='ec2-user@172.31.12.126'
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
            agent {label 'linux_slave'}
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
            steps{
                script
                {
                   sshagent(['slave-node-02-private-key'])   //This is the plugin used to login to the slave node-02
                       echo "Package the code...."
                       sh "scp -o StrictHostKeyChecking=no server-config.sh ${DEV_SERVER}:/home/ec2-user"
                       sh "ssh -o StrictHostkeyChecking=no ${DEV_SERVER} 'bash ~/server-config.sh'"
                }
            }
        }
    }
}