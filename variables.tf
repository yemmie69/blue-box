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
  default = "ami-05af42e5ca6f2195c"
}

variable "instance_type" {
  default = "t2.micro"

}

