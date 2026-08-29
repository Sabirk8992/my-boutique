# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_launch_template" "ng_general" {
  default_version                      = 1
  description                          = null
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = null
  image_id                             = null
  instance_initiated_shutdown_behavior = null
  instance_type                        = null
  kernel_id                            = null
  key_name                             = null
  name                                 = "eksctl-online-boutique-nodegroup-ng-general"
  name_prefix                          = null
  ram_disk_id                          = null
  tags                                 = {}
  tags_all                             = {}
  update_default_version               = null
  user_data                            = null
  vpc_security_group_ids               = ["sg-023c0eed332e97696"]
  block_device_mappings {
    device_name  = "/dev/xvda"
    no_device    = null
    virtual_name = null
    ebs {
      delete_on_termination      = null
      encrypted                  = null
      iops                       = 3000
      kms_key_id                 = null
      snapshot_id                = null
      throughput                 = 125
      volume_size                = 20
      volume_type                = "gp3"
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

# __generated__ by Terraform from "eksctl-online-boutique-nodegroup-n-NodeInstanceRole-Cc0oVxVbcoef"
resource "aws_iam_role" "node_instance_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "eksctl-online-boutique-nodegroup-n-NodeInstanceRole-Cc0oVxVbcoef"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags = {
    Name                                          = "eksctl-online-boutique-nodegroup-ng-general/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "ng-general"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    environment                                   = "learning"
    project                                       = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-nodegroup-ng-general/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "ng-general"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
    environment                                   = "learning"
    project                                       = "online-boutique"
  }
}

# __generated__ by Terraform from "eksctl-online-boutique-cluster-ServiceRole-sAfu2yja4h3E"
resource "aws_iam_role" "cluster_service_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = ["sts:AssumeRole", "sts:TagSession"]
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "eksctl-online-boutique-cluster-ServiceRole-sAfu2yja4h3E"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags = {
    Name                                          = "eksctl-online-boutique-cluster/ServiceRole"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
  tags_all = {
    Name                                          = "eksctl-online-boutique-cluster/ServiceRole"
    "alpha.eksctl.io/cluster-name"                = "online-boutique"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "online-boutique"
  }
}
