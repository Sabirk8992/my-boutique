# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "subnet-0b271d5cadaa2da49/rtb-0cb11ed0d0fc7fa54"
resource "aws_route_table_association" "public_us_west_2b" {
  gateway_id     = null
  route_table_id = "rtb-0cb11ed0d0fc7fa54"
  subnet_id      = "subnet-0b271d5cadaa2da49"
}

# __generated__ by Terraform from "subnet-0e72a38803883c397/rtb-0f90712b4a6816ebb"
resource "aws_route_table_association" "private_us_west_2b" {
  gateway_id     = null
  route_table_id = "rtb-0f90712b4a6816ebb"
  subnet_id      = "subnet-0e72a38803883c397"
}

# __generated__ by Terraform from "subnet-0c895124936cdbd29/rtb-0cb11ed0d0fc7fa54"
resource "aws_route_table_association" "public_us_west_2c" {
  gateway_id     = null
  route_table_id = "rtb-0cb11ed0d0fc7fa54"
  subnet_id      = "subnet-0c895124936cdbd29"
}

# __generated__ by Terraform from "subnet-01d6256069227826f/rtb-0cb11ed0d0fc7fa54"
resource "aws_route_table_association" "public_us_west_2a" {
  gateway_id     = null
  route_table_id = "rtb-0cb11ed0d0fc7fa54"
  subnet_id      = "subnet-01d6256069227826f"
}

# __generated__ by Terraform from "subnet-0a625a7dcb93e28f8/rtb-0c0f44a1c05e9af2d"
resource "aws_route_table_association" "private_us_west_2c" {
  gateway_id     = null
  route_table_id = "rtb-0c0f44a1c05e9af2d"
  subnet_id      = "subnet-0a625a7dcb93e28f8"
}

# __generated__ by Terraform from "subnet-0f1f53e5385cf9b61/rtb-099d3a8f3ee028863"
resource "aws_route_table_association" "private_us_west_2a" {
  gateway_id     = null
  route_table_id = "rtb-099d3a8f3ee028863"
  subnet_id      = "subnet-0f1f53e5385cf9b61"
}
