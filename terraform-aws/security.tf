# Security groups and the ingress rules between them.
# Consolidated from generated_security_groups.tf — values exactly
# as verified and applied. Egress kept inline (no separate resource
# exists for it); ingress managed only via the separate
# aws_vpc_security_group_ingress_rule resources below.

resource "aws_vpc_security_group_ingress_rule" "inter_nodegroup" {
  cidr_ipv4                    = null
  cidr_ipv6                    = null
  description                  = "Allow nodes to communicate with each other (all ports)"
  from_port                    = null
  ip_protocol                  = "-1"
  prefix_list_id               = null
  referenced_security_group_id = "sg-0084bf19a79ecbb00"
  security_group_id            = "sg-0084bf19a79ecbb00"
  tags                         = null
  to_port                      = null
}

resource "aws_vpc_security_group_ingress_rule" "node_to_default_cluster" {
  cidr_ipv4                    = null
  cidr_ipv6                    = null
  description                  = "Allow unmanaged nodes to communicate with control plane (all ports)"
  from_port                    = null
  ip_protocol                  = "-1"
  prefix_list_id               = null
  referenced_security_group_id = "sg-0084bf19a79ecbb00"
  security_group_id            = "sg-023c0eed332e97696"
  tags                         = null
  to_port                      = null
}

resource "aws_security_group" "cluster_shared_node" {
  description = "Communication between all nodes in the cluster"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "eksctl-online-boutique-cluster-ClusterSharedNodeSecurityGroup-Hwgpmt4PKYG4"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/ClusterSharedNodeSecurityGroup"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}

resource "aws_vpc_security_group_ingress_rule" "default_cluster_to_node" {
  cidr_ipv4                    = null
  cidr_ipv6                    = null
  description                  = "Allow managed and unmanaged nodes to communicate with each other (all ports)"
  from_port                    = null
  ip_protocol                  = "-1"
  prefix_list_id               = null
  referenced_security_group_id = "sg-023c0eed332e97696"
  security_group_id            = "sg-0084bf19a79ecbb00"
  tags                         = null
  to_port                      = null
}

resource "aws_security_group" "control_plane" {
  description = "Communication between the control plane and worker nodegroups"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "eksctl-online-boutique-cluster-ControlPlaneSecurityGroup-0sDpCRVGVdik"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/ControlPlaneSecurityGroup"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  vpc_id = "vpc-0bd302b6aec808496"
}


resource "aws_security_group" "vpc_endpoints" {
  name        = "online-boutique-vpc-endpoints"
  description = "Allow EKS worker nodes to access AWS interface VPC endpoints"
  vpc_id      = "vpc-0bd302b6aec808496"

  ingress {
    description     = "HTTPS from EKS worker nodes"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [aws_security_group.cluster_shared_node.id]
  }

  egress {
    description = "Allow endpoint responses"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "online-boutique-vpc-endpoints"
  }
}