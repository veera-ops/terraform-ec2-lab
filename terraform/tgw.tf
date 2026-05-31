resource "aws_ec2_transit_gateway" "tgw" {
  description = "Lab Transit Gateway"

  tags = {
    Name = "lab-tgw"
  }
}
