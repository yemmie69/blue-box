resource "aws_vpc" "Blue-box" {
  cidr_block = var.vpc-cidr_block
  tags = {
    Name = "Blue-box-vpc"
  }
}