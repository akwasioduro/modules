output "private_subnet_id" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private.id 
  
}