resource "aws_instance" "practice" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.instance_type
  subnet_id = module.vpc.private_subnet_id

  tags = {
    Name = local.instance_name
  }
}
