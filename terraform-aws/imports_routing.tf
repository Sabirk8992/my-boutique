# Batch 2: routing — route tables, the routes inside them, and the
# associations tying each subnet to its route table.

import {
  to = aws_route_table.private_us_west_2a
  id = "rtb-099d3a8f3ee028863"
}

import {
  to = aws_route_table.private_us_west_2b
  id = "rtb-0f90712b4a6816ebb"
}

import {
  to = aws_route_table.private_us_west_2c
  id = "rtb-0c0f44a1c05e9af2d"
}

import {
  to = aws_route_table.public
  id = "rtb-0cb11ed0d0fc7fa54"
}

import {
  to = aws_route.nat_private_us_west_2a
  id = "rtb-099d3a8f3ee028863_0.0.0.0/0"
}

import {
  to = aws_route.nat_private_us_west_2b
  id = "rtb-0f90712b4a6816ebb_0.0.0.0/0"
}

import {
  to = aws_route.nat_private_us_west_2c
  id = "rtb-0c0f44a1c05e9af2d_0.0.0.0/0"
}

import {
  to = aws_route.public
  id = "rtb-0cb11ed0d0fc7fa54_0.0.0.0/0"
}

import {
  to = aws_route_table_association.private_us_west_2a
  id = "subnet-0f1f53e5385cf9b61/rtb-099d3a8f3ee028863"
}

import {
  to = aws_route_table_association.private_us_west_2b
  id = "subnet-0e72a38803883c397/rtb-0f90712b4a6816ebb"
}

import {
  to = aws_route_table_association.private_us_west_2c
  id = "subnet-0a625a7dcb93e28f8/rtb-0c0f44a1c05e9af2d"
}

import {
  to = aws_route_table_association.public_us_west_2a
  id = "subnet-01d6256069227826f/rtb-0cb11ed0d0fc7fa54"
}

import {
  to = aws_route_table_association.public_us_west_2b
  id = "subnet-0b271d5cadaa2da49/rtb-0cb11ed0d0fc7fa54"
}

import {
  to = aws_route_table_association.public_us_west_2c
  id = "subnet-0c895124936cdbd29/rtb-0cb11ed0d0fc7fa54"
}
