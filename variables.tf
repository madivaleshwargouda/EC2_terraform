variable "instance_name" {
        description = "terraform_instance"
        default = "test"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-0e000dfca8c01ed1c"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-00874d747dde814fa"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}

variable "security_groups" {
        description = " The security group"
        default = "aws_security_group.securitygp.name"
}
