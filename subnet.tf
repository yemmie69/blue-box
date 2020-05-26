resource "aws_subnet" "Blue-box-subnet" {
  vpc_id     = "${aws_vpc.Blue-box.id}"
  cidr_block = var.subnet-cidr_block

  tags = {
    Name = "Blue-box-subnet"
  }
}