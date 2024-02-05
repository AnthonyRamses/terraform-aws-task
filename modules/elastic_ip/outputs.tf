output "elastic_ip" {
  description = "IP Publica de IP Elastica"
  value       = aws_eip.dandrade_web_server_eip.public_ip
}