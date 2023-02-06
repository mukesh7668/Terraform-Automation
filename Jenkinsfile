pipeline {
    agent any

    stages {
        stage('checkout git') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mukesh7668/Terraform-Automation.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("terraform validate") {
            steps {
                sh ("terraform validate") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan -lock=false') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} -auto-approve') 
           }
        }
    }
}