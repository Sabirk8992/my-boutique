# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_nat_gateway" "main" {
  allocation_id                      = "eipalloc-0551d1bafb7b5ad26"
  connectivity_type                  = "public"
  private_ip                         = "192.168.11.108"
  secondary_allocation_ids           = []
  subnet_id                          = "subnet-01d6256069227826f"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/NATGateway"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/NATGateway"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}

# __generated__ by Terraform from "eipalloc-0551d1bafb7b5ad26"
resource "aws_eip" "nat" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  instance                  = null
  ipam_pool_id              = null
  network_border_group      = "us-west-2"
  network_interface         = "eni-068ae457927e54d02"
  public_ipv4_pool          = "amazon"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/NATIP"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/NATIP"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}
