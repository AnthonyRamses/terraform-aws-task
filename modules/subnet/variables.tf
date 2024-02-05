variable "vpc_id" {
  description = "VPC ID"
}

variable "public_subnet_cidr" {
  description = "CIDR Block Para Subnet Publica"
}

variable "private_subnet_cidr" {
  description = "CIDR Block Para Subnet Privada"
}

variable "availability_zone" {
  description = "Availability Zone De Las Subnets"
}

variable "public_subnet_name" {
  description = "Nombre Para Subnet Publica"
}

variable "private_subnet_name" {
  description = "Nombre Para Subnet Privada"
}