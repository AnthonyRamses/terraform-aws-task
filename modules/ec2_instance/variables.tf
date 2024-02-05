variable "ami_id" {
  description = "AMI ID Para EC2"
}

variable "instance_type" {
  description = "Instance Type Para EC2"
}

variable "subnet_id" {
  description = "ID de Subnet para EC2"
}

variable "ssh_sg_id" {
  description = "ID de Security Group para SSH"
}

variable "http_sg_id" {
  description = "ID de Security Group para HTTP"
}