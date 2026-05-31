output "public_ip" {
  value = aws_instance.server.public_ip
}
output "dxgw_id" {
  value = aws_dx_gateway.dxgw.id
}
