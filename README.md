# Proyecto Final - Arquitectura de Software en la Nube con Terraform y AWS

Este proyecto de Terraform se creó como parte de un taller para la materia de maestría en Arquitectura de Software en la Nube. Define y gestiona la infraestructura necesaria para desplegar una arquitectura básica en AWS, incluyendo VPCs, subredes y otras configuraciones.

## Estructura del Proyecto

El proyecto incluye los siguientes archivos de configuración de Terraform:

- `locals.tf`: Define variables locales comunes.
- `main.tf`: Establece la configuración principal, incluyendo la VPC y las subredes.
- `outputs.tf`: Define los outputs para obtener IDs de recursos creados.
- `providers.tf`: Configura el proveedor de AWS y las versiones requeridas.
- `variables.tf`: Declara las variables utilizadas en el proyecto.

## Pre-requisitos

- [Terraform](https://www.terraform.io/downloads.html) versión 1.6.3 o superior.
- Cuenta de AWS con las credenciales configuradas en tu máquina local.

## Uso

Para utilizar este proyecto, sigue estos pasos:

1. Clona el repositorio en tu máquina local.
2. Navega hasta el directorio del proyecto.
3. Inicializa Terraform con `terraform init`.
4. Revisa los cambios que se aplicarán con `terraform plan`.
5. Aplica los cambios con `terraform apply`.

## Configuración

### Variables

Puedes modificar las siguientes variables en el archivo `variables.tf` según tus necesidades:

- `region`: Región de AWS donde se desplegarán los recursos.
- `aws_vpc`: CIDR block para la VPC.
- `aws_subnet_database`: CIDR block para la subnet de base de datos.
- `aws_subnet_backend`: CIDR block para la subnet de backend.
- `aws_subnet_erp`: CIDR block para la subnet de ERP.
- `aws_subnet_frontend`: CIDR block para la subnet de frontend.

## Contribuciones

Las contribuciones a este proyecto son bienvenidas. Si tienes sugerencias o mejoras, por favor abre un issue o un pull request.

## Licencia

[MIT License](LICENSE.md)
