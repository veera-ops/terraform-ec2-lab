output "public_ip" {
  value = aws_instance.server.public_ip
}
output "tgw_id" {
  value = aws_ec2_transit_gateway.tgw.id
}
output "dxgw_id" {
  value = aws_dx_gateway.dxgw.id
}
