provider "aws" {
    region = "sa-east-1"
}



resorce "aws_instance" "instance" {
	count = "4"
	ami = "ami-05674a88169b69e3b0"
	instance_type ="t3.micro"
	key_name = "new-sao-paulo"
    tags = {
        Name = "my_instance"
    }
    }
