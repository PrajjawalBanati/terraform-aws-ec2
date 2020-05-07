provider "aws" {
    region="us-east-1"  
}

resource "aws_vpc" "module_vpc" {
  cidr_block = "${var.vpc_cidr_block}"
}

resource "aws_subnet" "module_subnet" {
  vpc_id     = "${aws_vpc.module_vpc.id}"
  cidr_block = "${var.subnet_cidr_block}"
}

resource "aws_instance" "testInstance" {
  ami           = "${var.instance_image}"
  subnet_id =   "${aws_subnet.module_subnet.id}"
  instance_type = "${var.instance_type}"
  count = var.instance_count
}