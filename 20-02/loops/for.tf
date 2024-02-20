provider "aws" {
    region = "sa-east-1"
}

resource "aws_instance" "my_instance" {
    for_each = toset(var.ami_id)
    ami = each.value
    instance_type = "t2.micro"
    key_name = "new-sao-paulo"
    tags = {
        Name = "for_each"
    }
}

variable "ami_id" {
   default = ["ami-05674a88169b69e3b","ami-038b785927246c729","ami-0fd8f04280ebb1e43", "ami-0fd8f04280ebb1e43"] 
}


output "aws_insta_pub_ip" {
  
	value = {
 		for ami in var.ami_id 
   		aws_instance.my_instance[ami].public_ip
	
    }
}
