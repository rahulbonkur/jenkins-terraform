# Create a VPC
resource "aws_vpc" "rahul" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
    
}
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.rahul.id
  cidr_block = var.cidr_private

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.rahul.id
  cidr_block = var.cidr_public

  tags = {
    Name = "public_subnet"
  }
}


resource "aws_internet_gateway" "internetgateway" {
  vpc_id = aws_vpc.rahul.id

  tags = {
    Name        = var.internet_gateway_name
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.rahul.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetgateway.id
  }

  tags = {
    Name = var.route_table_name
  }
}
resource "aws_route_table_association" "asso_route" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table.id
}
