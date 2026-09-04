# VPC, subnets, routing, and NAT.
# Consolidated from generated_networking.tf, generated_routing.tf,
# generated_routing_assoc.tf, generated_nat.tf — values are exactly
# as they were in those verified, applied files. No resource
# references introduced in this pass; that's a separate future step.

resource "aws_vpc" "main" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/VPC"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = "vpc-0bd302b6aec808496"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_subnet" "public_us_west_2a" {
  vpc_id                  = "vpc-0bd302b6aec808496"
  availability_zone       = "us-west-2a"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "public_us_west_2b" {
  vpc_id                  = "vpc-0bd302b6aec808496"
  availability_zone       = "us-west-2b"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "public_us_west_2c" {
  vpc_id                  = "vpc-0bd302b6aec808496"
  availability_zone       = "us-west-2c"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "private_us_west_2a" {
  vpc_id                  = "vpc-0bd302b6aec808496"
  availability_zone       = "us-west-2a"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "private_us_west_2b" {
  vpc_id                  = "vpc-0bd302b6aec808496"
  availability_zone       = "us-west-2b"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "private_us_west_2c" {
  vpc_id                  = "vpc-0bd302b6aec808496"
  availability_zone       = "us-west-2c"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_route_table" "public" {
  vpc_id           = "vpc-0bd302b6aec808496"
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_route_table" "private_us_west_2a" {
  vpc_id           = "vpc-0bd302b6aec808496"
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_route_table" "private_us_west_2b" {
  vpc_id           = "vpc-0bd302b6aec808496"
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_route_table" "private_us_west_2c" {
  vpc_id           = "vpc-0bd302b6aec808496"
  propagating_vgws = []
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/PrivateRouteTableUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_route" "public" {
  route_table_id         = "rtb-0cb11ed0d0fc7fa54"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "igw-0e2aa846af8d67e06"
}

resource "aws_route" "nat_private_us_west_2a" {
  route_table_id         = "rtb-099d3a8f3ee028863"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "nat-06229c4da6e0f32a4"
}

resource "aws_route" "nat_private_us_west_2b" {
  route_table_id         = "rtb-0f90712b4a6816ebb"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "nat-06229c4da6e0f32a4"
}

resource "aws_route" "nat_private_us_west_2c" {
  route_table_id         = "rtb-0c0f44a1c05e9af2d"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "nat-06229c4da6e0f32a4"
}

resource "aws_route_table_association" "public_us_west_2a" {
  subnet_id      = "subnet-01d6256069227826f"
  route_table_id = "rtb-0cb11ed0d0fc7fa54"
}

resource "aws_route_table_association" "public_us_west_2b" {
  subnet_id      = "subnet-0b271d5cadaa2da49"
  route_table_id = "rtb-0cb11ed0d0fc7fa54"
}

resource "aws_route_table_association" "public_us_west_2c" {
  subnet_id      = "subnet-0c895124936cdbd29"
  route_table_id = "rtb-0cb11ed0d0fc7fa54"
}

resource "aws_route_table_association" "private_us_west_2a" {
  subnet_id      = "subnet-0f1f53e5385cf9b61"
  route_table_id = "rtb-099d3a8f3ee028863"
}

resource "aws_route_table_association" "private_us_west_2b" {
  subnet_id      = "subnet-0e72a38803883c397"
  route_table_id = "rtb-0f90712b4a6816ebb"
}

resource "aws_route_table_association" "private_us_west_2c" {
  subnet_id      = "subnet-0a625a7dcb93e28f8"
  route_table_id = "rtb-0c0f44a1c05e9af2d"
}

resource "aws_eip" "nat" {
  domain               = "vpc"
  network_border_group = "us-west-2"
  public_ipv4_pool     = "amazon"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/NATIP"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id     = "eipalloc-0551d1bafb7b5ad26"
  connectivity_type = "public"
  subnet_id         = "subnet-01d6256069227826f"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/NATGateway"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}


resource "aws_vpc_endpoint" "secretsmanager" {
  vpc_id = "vpc-0bd302b6aec808496"

  service_name = "com.amazonaws.us-west-2.secretsmanager"

  vpc_endpoint_type = "Interface"

  subnet_ids = [
    aws_subnet.private_us_west_2a.id,
    aws_subnet.private_us_west_2b.id,
    aws_subnet.private_us_west_2c.id
  ]

  security_group_ids = [
    aws_security_group.vpc_endpoints.id
  ]

  private_dns_enabled = true

  tags = {
    Name = "online-boutique-secretsmanager-endpoint"
  }
}