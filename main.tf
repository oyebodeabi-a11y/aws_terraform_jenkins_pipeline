resource "aws_instance" "simple-server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "abi"
  subnet_id                   = aws_subnet.myapp-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("simple_website.sh")
  tags = {
    Name = "${var.env_prefix}-simple-server"
  }
}

