pipeline{
    agent any

    environment {
        TF_VAR_ARM_CLIENT_ID = "${env.ARM_CLIENT_ID}"
        TF_VAR_ARM_CLIENT_SECRET = "${env.ARM_CLIENT_SECRET}"
        TF_VAR_ARM_SUBSCRIPTION_ID = "${env.ARM_SUBSCRIPTION_ID}"
        TF_VAR_ARM_TENANT_ID = "${env.ARM_TENANT_ID}"
    }

    stages{

        stage ('Terraform Init'){
            steps {
                sh 'terraform init'
            }
        }

        stage ('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage ('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}