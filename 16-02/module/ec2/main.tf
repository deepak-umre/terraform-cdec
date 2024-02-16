resource "aws_instance" "my-instance" {
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_groups   = var.security_groups
  subnet_id         = var.subnet_id
  tags = {
    Name = "var.project"
  }
}