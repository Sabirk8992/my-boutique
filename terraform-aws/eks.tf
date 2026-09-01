# EKS cluster, its managed node group, and the node group's launch
# template. Cross-references converted to point at the actual
# Terraform-managed resources instead of hardcoded IDs/ARNs.
#
# Note: node group sits in the PUBLIC subnets (2a/2b/2c), not private
# — that's what eksctl actually created here, preserved as-is. Worth
# a look under the hardening pass later, not touched in this edit.

resource "aws_eks_cluster" "online_boutique" {
  bootstrap_self_managed_addons = false
  enabled_cluster_log_types     = []
  force_update_version          = null
  name                          = "online-boutique"
  role_arn                      = aws_iam_role.cluster_service_role.arn
  version                       = "1.35"
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
    security_group_ids      = [aws_security_group.control_plane.id]
    subnet_ids = [
      aws_subnet.public_us_west_2a.id,
      aws_subnet.private_us_west_2c.id,
      aws_subnet.public_us_west_2b.id,
      aws_subnet.public_us_west_2c.id,
      aws_subnet.private_us_west_2b.id,
      aws_subnet.private_us_west_2a.id,
    ]
  }
}




######## new node instance type###########


resource "aws_eks_node_group" "ng_private_t3" {
  cluster_name    = aws_eks_cluster.online_boutique.name
  version         = "1.35"
  node_group_name = "ng-private-t3"
  node_role_arn   = aws_iam_role.node_instance_role.arn
  subnet_ids = [
    aws_subnet.private_us_west_2a.id,
    aws_subnet.private_us_west_2b.id,
    aws_subnet.private_us_west_2c.id,
  ]
  ami_type       = "AL2023_x86_64_STANDARD"
  capacity_type  = "ON_DEMAND"
  instance_types = ["t3.medium"]

  scaling_config {
    desired_size = 3
    max_size     = 3
    min_size     = 3
  }

  update_config {
    max_unavailable = 1
  }

  tags = {
    project     = "online-boutique"
    environment = "learning"
  }
}

data "tls_certificate" "eks_oidc" {
  url = aws_eks_cluster.online_boutique.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "eks_oidc" {
  url             = aws_eks_cluster.online_boutique.identity[0].oidc[0].issuer
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks_oidc.certificates[0].sha1_fingerprint]
}
resource "aws_secretsmanager_secret" "cartservice_demo" {
  name = "online-boutique/cartservice/demo-credential"
}

resource "aws_secretsmanager_secret_version" "cartservice_demo" {
  secret_id     = aws_secretsmanager_secret.cartservice_demo.id
  secret_string = jsonencode({ demo_key = "demo-value-proving-the-pipeline-works" })
}

resource "aws_iam_role" "cartservice_irsa" {
  name = "online-boutique-cartservice-irsa"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Federated = aws_iam_openid_connect_provider.eks_oidc.arn }
      Action    = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "${replace(aws_iam_openid_connect_provider.eks_oidc.url, "https://", "")}:sub" = "system:serviceaccount:online-boutique:cartservice"
          "${replace(aws_iam_openid_connect_provider.eks_oidc.url, "https://", "")}:aud" = "sts.amazonaws.com"
        }
      }
    }]
  })
}

resource "aws_iam_role_policy" "cartservice_secrets_read" {
  name = "read-cartservice-demo-secret"
  role = aws_iam_role.cartservice_irsa.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = "secretsmanager:GetSecretValue"
      Resource = aws_secretsmanager_secret.cartservice_demo.arn
    }]
  })
}
