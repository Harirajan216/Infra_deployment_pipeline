resource "aws_instance" "myec2" {
  ami           = ami_id
  instance_type = instance_type
  subnet_id     = subnet_id
  count         = ec2_count

  tags = {
    Name  = "${var.var.env}--ec2-${count.index}"
    env   = var.env
  }
}