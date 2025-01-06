variable "aws_region" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "vpc_name" {
  type = string
}
variable "subnet_availability_zone" {
  type = string
}
variable "public_subnet_cidr" {
  type = string
}
variable "ec2_instance_type" {
  type = string
}
variable "ec2_instance_name" {
  type = string
}
variable "elasticip_allocation_id" {
  type = string
}
variable "jenkins_ami_prefix" {
  type = string
}