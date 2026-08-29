# EKS cluster, its managed node group, and the node group's launch
# template. Consolidated from generated.tf and generated_final.tf —
# values exactly as verified and applied.

resource "aws_eks_cluster" "online_boutique" {
  bootstrap_self_managed_addons = false
  enabled_cluster_log_types     = []
  force_update_version          = null
  name                          = "online-boutique"
  role_arn                      = "arn:aws:iam::498523528523:role/eksctl-online-boutique-cluster-ServiceRole-sAfu2yja4h3E"
  version                       = "1.32"
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/ControlPlane"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
    elastic_load_balancing {
      enabled = false
    }
  }

  upgrade_policy {
    support_type = "EXTENDED"
  }

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    public_access_cidrs     = ["0.0.0.0/0"]
    security_group_ids      = ["sg-059ae7a695315e111"]
    subnet_ids = [
      "subnet-01d6256069227826f",
      "subnet-0a625a7dcb93e28f8",
      "subnet-0b271d5cadaa2da49",
      "subnet-0c895124936cdbd29",
      "subnet-0e72a38803883c397",
      "subnet-0f1f53e5385cf9b61",
    ]
  }
}

resource "aws_eks_node_group" "ng_general" {
  ami_type              = "AL2023_x86_64_STANDARD"
  capacity_type         = "ON_DEMAND"
  cluster_name          = "online-boutique"
  disk_size             = 0
  force_update_version  = null
  instance_types        = ["m5.large"]
  node_group_name        = "ng-general"
  node_group_name_prefix = null
  node_role_arn          = "arn:aws:iam::498523528523:role/eksctl-online-boutique-nodegroup-n-NodeInstanceRole-Cc0oVxVbcoef"
  release_version        = "1.32.13-20260818"
  subnet_ids = [
    "subnet-01d6256069227826f",
    "subnet-0b271d5cadaa2da49",
    "subnet-0c895124936cdbd29",
  ]
  version = "1.32"
  labels = {
    "alpha.eksctl.io/cluster-name"   = "online-boutique"
    "alpha.eksctl.io/nodegroup-name" = "ng-general"
  }
  tags = {
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "ng-general"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    environment                                   = "learning"
    project                                       = "online-boutique"
  }

  launch_template {
    id      = "lt-043e2680cee096046"
    version = "1"
  }

  scaling_config {
    desired_size = 3
    max_size     = 3
    min_size     = 3
  }

  update_config {
    max_unavailable = 1
  }
}

resource "aws_launch_template" "ng_general" {
  name                                  = "eksctl-online-boutique-nodegroup-ng-general"
  description                           = null
  disable_api_stop                      = false
  disable_api_termination               = false
  ebs_optimized                         = null
  image_id                              = null
  instance_initiated_shutdown_behavior  = null
  instance_type                         = null
  kernel_id                             = null
  key_name                              = null
  name_prefix                           = null
  ram_disk_id                           = null
  update_default_version                = null
  user_data                             = null
  vpc_security_group_ids                = ["sg-023c0eed332e97696"]
  tags                                  = {}

  block_device_mappings {
    device_name  = "/dev/xvda"
    no_device    = null
    virtual_name = null
    ebs {
      delete_on_termination = null
      encrypted              = null
      iops                   = 3000
      kms_key_id             = null
      snapshot_id            = null
      throughput             = 125
      volume_size            = 20
      volume_type            = "gp3"
    }
  }

  metadata_options {
    http_endpoint               = null
    http_protocol_ipv6          = null
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = null
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name                             = "online-boutique-ng-general-Node"
      "alpha.eksctl.io/nodegroup-name" = "ng-general"
      "alpha.eksctl.io/nodegroup-type" = "managed"
      environment                      = "learning"
      project                          = "online-boutique"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      Name                             = "online-boutique-ng-general-Node"
      "alpha.eksctl.io/nodegroup-name" = "ng-general"
      "alpha.eksctl.io/nodegroup-type" = "managed"
      environment                      = "learning"
      project                          = "online-boutique"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      Name                             = "online-boutique-ng-general-Node"
      "alpha.eksctl.io/nodegroup-name" = "ng-general"
      "alpha.eksctl.io/nodegroup-type" = "managed"
      environment                      = "learning"
      project                          = "online-boutique"
    }
  }
}
