output "vpc_id" {
    value = aws_vpc.rahul.id
}
output "public_subnet_id" {
    value = aws_subnet.public_subnet.id
}
output "private_subnet_id" {
    value = aws_subnet.private_subnet.id
}
output "internet_gateway_id" {
    value = aws_internet_gateway.internetgateway.id
}
output "route_table_id" {
    value = aws_route_table.route_table.id
}
