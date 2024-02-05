resource "aws_instance" "dandrade_web_server" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = [var.ssh_sg_id, var.http_sg_id]

  tags = {
    Name = "DandradeWebServer"
  }
}
