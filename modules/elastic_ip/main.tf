resource "aws_eip" "dandrade_web_server_eip" {
  instance = var.instance_id
}
