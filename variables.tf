variable "aws_region" {
  description = "Region AWS"
  type        = string
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR Block Para la VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR Block Para la Subnet Publica"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR Block Para la Subnet Privada"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone Para la EC2"
  type        = string
}

variable "ami_id" {
  description = "AMI ID Para la EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo De Instancia Para la EC2"
  type        = string
}
