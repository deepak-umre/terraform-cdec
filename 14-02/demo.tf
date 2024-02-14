provider "aws" {
    region = "sa-east-1"
}
resource "aws_instance" "my-instance" {
  ami           = data.aws_ami.my_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}

data "aws_ami" "my_ami" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "demo_image"
    Tested = "true"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

output "instance_ip_addr" {
  value = aws_instance.my-instance.public_ip
}
