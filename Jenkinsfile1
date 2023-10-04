pipeline 
{
    agent any
    parameters{
        string(name: 'Env', defaultValue: 'Test', description:'env to deploy')
        booleanParam(name:'executeTests', defaultValue: 'true', description:'decide to run test cases')
        choice(name:'APPVERSION', choices: ['1.1','1.2','1.3'])
    }
    stages{
        stage('compile')
        {
            steps{
               echo "Compile the code"
               echo "Deploying to env: ${params.Env}"
            }
        }
        stage('Unit Test')
        {
            when{
                expression{
                    params.executeTests==true
                }
            }
            steps{
               echo "Run the unitTest cases"
            }
        }
        stage('Package')
        {
            steps{
               echo "Packging the code"
               echo "Packing the code version ${params.APPVERSION}"
            }
        }
        stage('Deploy')
        {
            input{
                message "select the version to Package"
                ok "Click to select"
                parameters{
                    choice(name: 'NEWVERSION', choices:['3','4','5'])
                }
            }
            steps{
                echo "Package the code"
                echo "Packing the code version ${params.NEWVERSION}"
            }
        }
    }
}