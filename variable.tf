variable "vpc_name" {
    description = "Name of the VPC"
    type = string
}
variable "cidr_block" {
    description = "CIDR of the vpc"
    type = string
}
variable "cidr_private" {
    description = "CIDR of the private subnet"
    type = string
}
variable "cidr_public" {
    description = "CIDR of the public subnet"
    type = string
}
variable "internet_gateway_name" {
    description = "Name of the Internet gateway"
    type = string
}
variable "route_table_name" {
    description = "Name of the route table"
    type = string
}
variable "public_subnet_name" {
    description = "Name of the public subnet"
    type = string
}
variable "private_subnet_name" {
    description = "Name of the private subnet"
    type = string
}
