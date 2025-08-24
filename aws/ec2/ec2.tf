resource "aws_instance" "practice" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.instance_type
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.private_subnet_id

  tags = {
    Name = local.instance_name
  }
}
