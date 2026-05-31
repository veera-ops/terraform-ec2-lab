data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_security_group" "ec2_sg" {
  name   = "ec2-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "server" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"

  subnet_id                   = aws_subnet.public.id
  key_name                    = aws_key_pair.key.key_name
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "terraform-test-server"
  }
}
