# These don't create anything — they tell Terraform "this resource
# already exists in AWS, go describe it" so config gets generated
# from reality instead of us writing it blind.

import {
  to = aws_eks_cluster.online_boutique
  id = "online-boutique"
}

import {
  to = aws_eks_node_group.ng_general
  id = "online-boutique:ng-general"
}
