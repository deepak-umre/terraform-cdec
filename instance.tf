provider "aws" {
  region  = "sa-east-1"
}

resource "aws_instance" "my_instance" {
    ami                 = "ami-0623e7a7b489397c1"
    availability_zone   = "sa-east-1a"
    instance_type       = "t2.micro"
    key_name            = "new-sao-paulo"
    security_groups     = [	sg-00f9a66c9c40f8557]
    tags   = {
        name = demo
    }
     
}