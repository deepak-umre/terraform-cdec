provider "aws" {
    region = "sa-east-1"
}

resource "aws_instance" "my_instance" {
    
    ami = "ami-05674a88169b69e3b"
    instance_type = "t2.micro"
    key_name = "new-sao-paulo"
    tags = {
        Name = "for_each"
    }
     provisioner "file" {
    source      = "./index.html" #Update this with your local directory containing file
    destination = "/"
     connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = file("./new-sao-paulo.pem")
      host     = self.public_ip
    }
  }
}