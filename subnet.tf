resource "aws_subnet" "subnet-01" {
  vpc_id                  = aws_vpc.vpc-01.id
  cidr_block              = var.sub01
  map_public_ip_on_launch = true
  availability_zone       = var.az-subnet01

  tags = {
    Name = var.sub01-name
  }
}

resource "aws_subnet" "subnet-02" {
  vpc_id                  = aws_vpc.vpc-01.id
  cidr_block              = var.sub02
  map_public_ip_on_launch = true
  availability_zone       = var.az-subnet02

  tags = {
    Name = var.sub02-name
  }
}

resource "aws_subnet" "subnet-03" {
  vpc_id            = aws_vpc.vpc-01.id
  cidr_block        = var.sub03
  availability_zone = var.az-subnet03

  tags = {
    Name = var.sub03-name
  }
}