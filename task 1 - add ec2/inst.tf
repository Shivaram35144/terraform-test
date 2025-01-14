resource "aws_instance" "web" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.keypair.key_name
  vpc_security_group_ids = [aws_security_group.task1.id]
  availability_zone      = "us-east-1a"

  tags = {
    Name = "task1"

  }
}