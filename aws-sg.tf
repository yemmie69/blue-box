resource "aws_security_group" "Blue-box" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.Blue-box.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks =  ["52.209.75.151/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    //cidr_blocks = ["3.249.122.96/32"]
  }

  tags = {
    Name = "Blue-box_sg"
  }
}