# Batch 1: networking core — VPC, IGW, subnets.
# Everything else (routing, NAT, security groups) references these,
# so this batch goes first.

import {
  to = aws_vpc.main
  id = "vpc-0bd302b6aec808496"
}

import {
  to = aws_internet_gateway.main
  id = "igw-0e2aa846af8d67e06"
}

import {
  to = aws_subnet.public_us_west_2a
  id = "subnet-01d6256069227826f"
}

import {
  to = aws_subnet.public_us_west_2b
  id = "subnet-0b271d5cadaa2da49"
}

import {
  to = aws_subnet.public_us_west_2c
  id = "subnet-0c895124936cdbd29"
}

import {
  to = aws_subnet.private_us_west_2a
  id = "subnet-0f1f53e5385cf9b61"
}

import {
  to = aws_subnet.private_us_west_2b
  id = "subnet-0e72a38803883c397"
}

import {
  to = aws_subnet.private_us_west_2c
  id = "subnet-0a625a7dcb93e28f8"
}
