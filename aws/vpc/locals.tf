locals {
    instance_type = "t2.micro"
    name_prefix   = format("%s-%s", var.name_prefix, "practice")
    instance_name = format("%s-%s", local.name_prefix, "ec2instance")
    region = "us-east-1"
}