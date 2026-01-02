variable "ami_id" {
    type = string
    description = "AMI of ec2 instances"
  
}

variable "instance_type" {
    type = string
    description = "Instance type of ec2 instance"
  
}

variable "subnet_id" {
    type = string
    description = "subnet id of ec2 instances"
  
}

variable "ec2_count" {
    type = string
    description = "ec2 count of ec2 instances"
  
}

variable "env" {
    type = string
    description = "env of ec2 instances"
  
}