
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "example" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"  
  map_public_ip_on_launch = true
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = aws_subnet.example.id  
  tags = {
    Name = "example-instance"
  }
}

