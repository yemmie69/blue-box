resource "aws_instance" "Blue-box_instance" {
  ami           = var.aws-ami
  instance_type = var.instance_type
    key_name = "terraform"
count         = "${var.aws-count}"

  user_data = <<EOF

  #!/bin/bash

  git clone https://github.com/yemmie69/myweatherapp.git
cd myweatherapp
mvn package
mvn spring-boot:run -Dapp.weather.locations=Nigeria/Lagos,Nigeria/Kano
sudo yum install tomcat -y

sudo service tomcat restart

EOF

  tags = {
    Name= "nodes ${count.index +1}"
  }
}