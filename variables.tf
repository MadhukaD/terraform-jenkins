variable "myregion" {
    description = "this is where my infra will be deployed"
    type = string
    default = "ap-south-1"
}

variable "ami_id" {
    description = "this is my ami id"
    type = string
    default = "ami-0cc9838aa7ab1dce7"
}

variable "vpc_id" {
    description = "this is my vpc id"
    type = string
    default = "vpc-0d85910be8a76cda2"
}

variable "instance" {
    description = "this is my instance type"
    type = string
    default = "t2.micro"
}

variable "mybucketname" {
    description = "this is my bucket name"
    type = string
    default = "my-tf-test-bucket-for-jenkins"
}
