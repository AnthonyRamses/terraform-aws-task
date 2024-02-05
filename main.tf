provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "creds"
}

module "vpc" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone = var.availability_zone
  public_subnet_name = "SubnetPublica"
  private_subnet_name = "SubnetPrivada"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2_instance" {
  source     = "./modules/ec2_instance"
  subnet_id  = module.subnet.private_subnet_id
  ssh_sg_id  = module.security_group.ssh_sg_id
  http_sg_id = module.security_group.http_sg_id
  ami_id = var.ami_id
  instance_type = var.instance_type
}

module "elastic_ip" {
  source      = "./modules/elastic_ip"
  instance_id = module.ec2_instance.instance_id
}