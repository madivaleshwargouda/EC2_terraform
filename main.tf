provider "aws" {
    access_key = "AKIWSEGVVYPUYBKMIEM"
    secret_key = "tOi12wG0m+AWGEGHDHEGjFvuZlY2o9+f60F/u3K"
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    associate_public_ip_address = true
    key_name = "mahesh"
    user_data = file("${path.module}/script.sh")
}

resource "aws_default_vpc" "myvpc" {
  tags = {
    Name = "myvpc"
  }
}
