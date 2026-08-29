# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_subnet" "public_us_west_2c" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-west-2c"
  
  cidr_block                                     = "192.168.32.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = true
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_subnet" "private_us_west_2a" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-west-2a"
 
  cidr_block                                     = "192.168.96.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_subnet" "private_us_west_2c" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-west-2c"
  
  cidr_block                                     = "192.168.128.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2C"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_subnet" "private_us_west_2b" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-west-2b"
  
  cidr_block                                     = "192.168.160.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPrivateUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_subnet" "public_us_west_2a" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-west-2a"
  
  cidr_block                                     = "192.168.0.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = true
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2A"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_subnet" "public_us_west_2b" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-west-2b"
  
  cidr_block                                     = "192.168.64.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = true
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/SubnetPublicUSWEST2B"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform from "igw-0e2aa846af8d67e06"
resource "aws_internet_gateway" "main" {
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

# __generated__ by Terraform
resource "aws_vpc" "main" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "192.168.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_cidr_block                      = null
  ipv6_cidr_block_network_border_group = null
 
  
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/VPC"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/VPC"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}
