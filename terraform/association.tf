resource "aws_dx_gateway_association" "dxgw_tgw" {
  dx_gateway_id         = aws_dx_gateway.dxgw.id
  associated_gateway_id = aws_ec2_transit_gateway.tgw.id

  allowed_prefixes = [
    "10.0.0.0/16"
  ]
}
