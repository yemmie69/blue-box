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
        
 terraform apply -auto-approve

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
            sudo -i
                    sudo yum update -y
         sudo yum install tomcat git maven -y
         
     rm -rf myweatherapp          
    
 git clone https://github.com/yemmie69/myweatherapp.git
             cd myweatherapp
mvn clean package
mvn spring-boot:run -Dapp.weather.locations=Nigeria/Lagos,Nigeria/Kano &
            
            '''
         }
      }
   }
}
