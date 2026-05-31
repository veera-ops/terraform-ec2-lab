resource "aws_dx_gateway" "dxgw" {
  name            = "lab-dxgw"
  amazon_side_asn = 64512

  tags = {
    Name = "lab-dxgw"
  }
}
