variable "Env" {
    type = string
    description = "env of ec2"
  
}
variable "vpc_cidr" {
    type = string
    description = "vpc CIDR range"
  
}

variable "subnet_cidr" {
    type = string
    description = "subnet CIDR range"
  
}

variable "az_zone" {
    type = string
    description = "az for vpc"
  
}