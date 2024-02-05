output "private_subnet_id" {
  description = "ID de Subnet Privada"
  value       = aws_subnet.private_subnet.id
}

output "public_subnet_id" {
  description = "ID de Subnet Publica"
  value       = aws_subnet.public_subnet.id
}