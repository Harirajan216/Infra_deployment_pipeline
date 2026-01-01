resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.Env}--vpc"
  }
}

resource "aws_subnet" "subnetid" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az_zone

  tags = {
    Name = "${var.Env}--subnet"
  }
}

