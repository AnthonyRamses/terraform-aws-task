output "ssh_sg_id" {
  description = "ID Security Group SSH"
  value       = aws_security_group.ssh_sg.id
}

output "http_sg_id" {
  description = "ID Security Group HTTP"
  value       = aws_security_group.http_sg.id
}