# Batch 3: NAT Gateway and its Elastic IP.

import {
  to = aws_nat_gateway.main
  id = "nat-06229c4da6e0f32a4"
}

import {
  to = aws_eip.nat
  id = "eipalloc-0551d1bafb7b5ad26"
}
