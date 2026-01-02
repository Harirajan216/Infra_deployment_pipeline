module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "12.0.0.0/16"
  subnet_cidr   = "12.0.1.0/24"
  subnet_az     = "${var.aws_region}a"          # ap-southeast-1a
  env           = "Prod"
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = "ami-0e7938ad51d883574"
  instance_type     = "t3.micro"
  subnet_id         = module.vpc.subnet_id
  ec2_count         = 0
  env               = "Prod"
}