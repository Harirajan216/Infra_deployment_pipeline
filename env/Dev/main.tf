module "vpc" {
    source        = "../../modules/vpc"
    vpc_cidr      = "10.0.0.0/16"
    subnet_cidr   = "10.0.1.0/24"
    az_zone       = "${var.aws_region}a"
    Env           = "Dev"
}

module "ec2" {
    source         = "../../modules/ec2"
    ami_id         = "ami-0e7938ad51d883574"
    instance_type  = "t2.micro"
    subnet_id      = module.vpc.subnet_id
    ec2_count      = 2
    Env            = "Dev"
  
}