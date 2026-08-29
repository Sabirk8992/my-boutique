# IAM roles for the cluster control plane and worker nodes.
# Consolidated from generated_final.tf — values exactly as
# verified and applied.

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
}

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
}
