resource "aws_vpc" "dandrade_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "dandrade_igw" {
  vpc_id = aws_vpc.dandrade_vpc.id

  tags = {
    Name = "DandradeIGW"
  }
}

resource "aws_route_table" "dandrade_public_rt" {
  vpc_id = aws_vpc.dandrade_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dandrade_igw.id
  }

  tags = {
    Name = "DandradePublicRT"
  }
}