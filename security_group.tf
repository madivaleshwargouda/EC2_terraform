resource "aws_security_group" "securitygp" {
  name        = "securitygp"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_default_vpc.myvpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.myvpc.cidr_block]
  }

  ingress {
    description      = "TLS from VPC1"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.myvpc.cidr_block]
  }
ingress {
    description      = "TLS from VPC2"
    from_port        = 8082
    to_port          = 8082
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.myvpc.cidr_block]
  }

ingress {
    description      = "TLS from VPC3"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.myvpc.cidr_block]
  }
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "securitygp"
  }
}
