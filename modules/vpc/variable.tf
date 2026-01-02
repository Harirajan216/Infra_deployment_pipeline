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

output "subnet_id" {
    value = aws_subnet.main.subnetid
    description = "the subnet which my instances to be created"
  
}