resource "aws_dx_gateway" "dxgw" {
  name            = "terraform-dxgw"
  amazon_side_asn = 64512
}
