pipeline {
   agent any

   stages {
      stage('Terraform init') {
          environment {
              AWS_ACCESS_KEY_ID = credentials ("AWS_ACCESS_KEY_ID")
               AWS_SECRET_ACCESS_KEY = credentials ("AWS_SECRET_ACCESS_KEY")
               }
         steps {
            echo 'initializing terraform'
            sh '''
         terraform init
            '''
         }
      }
      
      stage('Terraform apply') {
           environment {
              AWS_ACCESS_KEY_ID = credentials ("AWS_ACCESS_KEY_ID")
               AWS_SECRET_ACCESS_KEY = credentials ("AWS_SECRET_ACCESS_KEY")
              
          }
         steps {
            echo 'terraform apply'
            sh '''
            terraform apply -auto-approve
            yum install git -y
            git clone https://github.com/yemmie69/blue-box
            cd myweatherapp
            mvn clean package
            mvn spring-boot:run -Dapp.weather.locations=Nigeria/Lagos,Nigeria/Kano &
            '''
         }
      }
   }
}
