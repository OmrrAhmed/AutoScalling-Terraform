resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc-01.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id

  }
  tags = {
    Name = var.rt-name
  }
}

resource "aws_route_table_association" "pub-table" {
  subnet_id      = aws_subnet.subnet-01.id
  route_table_id = aws_route_table.public.id
}


resource "aws_route_table_association" "pub-table2" {
  subnet_id      = aws_subnet.subnet-02.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc-01.id
  tags = {
    Name = var.rt-name2
  }
}

resource "aws_route_table_association" "pri-table" {
  subnet_id      = aws_subnet.subnet-03.id
  route_table_id = aws_route_table.private.id
}