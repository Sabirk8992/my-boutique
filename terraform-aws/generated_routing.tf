# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_route_table" "private_us_west_2c" {
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_route_table" "public" {
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_route_table" "private_us_west_2a" {
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform from "rtb-0f90712b4a6816ebb_0.0.0.0/0"
resource "aws_route" "nat_private_us_west_2b" {
  carrier_gateway_id          = null
  core_network_arn            = null
  destination_cidr_block      = "0.0.0.0/0"
  destination_ipv6_cidr_block = null
  destination_prefix_list_id  = null
  egress_only_gateway_id      = null
  gateway_id                  = null
  local_gateway_id            = null
  nat_gateway_id              = "nat-06229c4da6e0f32a4"
  network_interface_id        = null
  route_table_id              = "rtb-0f90712b4a6816ebb"
  transit_gateway_id          = null
  vpc_endpoint_id             = null
  vpc_peering_connection_id   = null
}

# __generated__ by Terraform from "rtb-0cb11ed0d0fc7fa54_0.0.0.0/0"
resource "aws_route" "public" {
  carrier_gateway_id          = null
  core_network_arn            = null
  destination_cidr_block      = "0.0.0.0/0"
  destination_ipv6_cidr_block = null
  destination_prefix_list_id  = null
  egress_only_gateway_id      = null
  gateway_id                  = "igw-0e2aa846af8d67e06"
  local_gateway_id            = null
  nat_gateway_id              = null
  network_interface_id        = null
  route_table_id              = "rtb-0cb11ed0d0fc7fa54"
  transit_gateway_id          = null
  vpc_endpoint_id             = null
  vpc_peering_connection_id   = null
}

# __generated__ by Terraform from "rtb-0c0f44a1c05e9af2d_0.0.0.0/0"
resource "aws_route" "nat_private_us_west_2c" {
  carrier_gateway_id          = null
  core_network_arn            = null
  destination_cidr_block      = "0.0.0.0/0"
  destination_ipv6_cidr_block = null
  destination_prefix_list_id  = null
  egress_only_gateway_id      = null
  gateway_id                  = null
  local_gateway_id            = null
  nat_gateway_id              = "nat-06229c4da6e0f32a4"
  network_interface_id        = null
  route_table_id              = "rtb-0c0f44a1c05e9af2d"
  transit_gateway_id          = null
  vpc_endpoint_id             = null
  vpc_peering_connection_id   = null
}

# __generated__ by Terraform
resource "aws_route_table" "private_us_west_2b" {
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform from "rtb-099d3a8f3ee028863_0.0.0.0/0"
resource "aws_route" "nat_private_us_west_2a" {
  carrier_gateway_id          = null
  core_network_arn            = null
  destination_cidr_block      = "0.0.0.0/0"
  destination_ipv6_cidr_block = null
  destination_prefix_list_id  = null
  egress_only_gateway_id      = null
  gateway_id                  = null
  local_gateway_id            = null
  nat_gateway_id              = "nat-06229c4da6e0f32a4"
  network_interface_id        = null
  route_table_id              = "rtb-099d3a8f3ee028863"
  transit_gateway_id          = null
  vpc_endpoint_id             = null
  vpc_peering_connection_id   = null
}
