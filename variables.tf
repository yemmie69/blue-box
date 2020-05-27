variable "region" {
  default = "eu-west-1"
}

variable "vpc-cidr_block" {
  default = "10.10.0.0/16"

}

variable "subnet-cidr_block" {
  default = "10.10.10.0/24"

}

variable "aws-ami" {
  default = "ami-0779e1ae5ff240108"
}

variable "instance_type" {
  default = "t2.micro"

}

