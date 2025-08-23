resource "aws_instance" "practice" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.instance_type
  subnet_id = aws_subnet.private.id
  depends_on = [aws_subnet.private]

  tags = {
    Name = local.instance_name
  }
}
