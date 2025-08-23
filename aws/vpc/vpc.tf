resource "aws_vpc" "terravpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = format("%s-%s", var.name_prefix, "vpc")
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.terravpc.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = format("%s-%s", local.name_prefix, "public-subnet")
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.terravpc.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = format("%s-%s", local.name_prefix, "private-subnet")
  }
}