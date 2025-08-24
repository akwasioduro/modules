output "private_subnet_id" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private.id 
  
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.terravpc.id
  
}