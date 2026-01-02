variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "subnet_cidr" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_az" {
  type        = string
  description = "AZ of the Subnet"
}

output "subnet_id" {
  value = aws_subnet.public.id   # or whatever your real subnet resource + attribute is
}
