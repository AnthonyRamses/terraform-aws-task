# Documentación para Ejecutar La Infraestructura Terraform

Esta es una guia donde se detalla como ejecutar la infraestructura detallada dentro de este repositorio.

## Requisitos Previos

Antes de comenzar, asegúrate de tener lo siguiente:

- Terraform instalado.
- Acceso a una cuenta de AWS con permisos adecuados para crear y gestionar recursos.

## Pasos de Ejecucion

### 1. Configuración de Variables

Validar las variables dentro del archivo `terraform.tfvars`.

```hcl
aws_region          = "us-west-2"
vpc_name            = "dandrade_vpc"
vpc_cidr_block      = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
availability_zone   = "us-west-2a"
ami_id              = "ami-0ecb0bb5d6b19457a"
instance_type       = "t2.micro"
```
### 2. Validar las Credenciales
Crear un perfil de credenciales en caso tal no se tenga configurado y detallar la ruta dentro de `main.tf`
```json
provider "aws" {
    region                   = var.aws_region
    shared_credentials_files = ["~/.aws/credentials"] //Cambiar segun configuracion
    profile                  = "creds" //Cambiar segun configuracion
}
```
### 3. Iniciar Terraform
Debemos iniciar Terraform dentro del repositorio con el comando:
```hcl
terraform init
```
### 4. Verificar Configuracion
Debemos verificar la configuracion de los modulos con el comando:
```hcl
terraform plan
```
### 5. Aplicar los Cambios en la Nube
Debemos aplicar los cambios con el comando, (Poner `-auto-approve` para evitar el prompt de confirmacion):
```hcl
terraform apply -auto-approve
```
### 6. Validar la instancia y configuracion dentro de la consola de AWS
### 7. Descartar los cambios
Descartar los cambios para evitar cobros con el comando
```hcl
terraform destroy
```