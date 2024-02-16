###vpc variables ###


variable "vpc_cidr_block" {
        default = "192.168.0.0/16"
}

variable "project" {
        default = "dev"
}


variable "public_cidr_block" {
        default = "192.168.0.0/24"
}

variable "private_cidr_block" {
        default = "192.168.1.0/24"
}


variable "from_port" {
        default = "80"
}

variable "to_port" {
        default = "80"
}

### ec2 variables ###

variable "ami" {
    default = "ami-0d2b8d9a11c49b9f1"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "key_name"  {
    default = "new-sao-paulo"
}



