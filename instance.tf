resource "aws_instance" "Blue-box_instance" {
  ami           = var.aws-ami
  instance_type = var.instance_type

  tags = {
    Name = "Blue-Box"
  }
}