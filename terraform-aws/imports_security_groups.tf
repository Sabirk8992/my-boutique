# Batch 4: security groups and the ingress rules between them.
# NOT included: cluster_security_group_id (sg-023c0eed332e97696) —
# that one is auto-managed as part of aws_eks_cluster itself, already
# covered by the cluster import from round one.

import {
  to = aws_security_group.cluster_shared_node
  id = "sg-0084bf19a79ecbb00"
}

import {
  to = aws_security_group.control_plane
  id = "sg-059ae7a695315e111"
}

import {
  to = aws_vpc_security_group_ingress_rule.default_cluster_to_node
  id = "sgr-01fa7f6d18127b829"
}

import {
  to = aws_vpc_security_group_ingress_rule.inter_nodegroup
  id = "sgr-03c999398da60c94a"
}

import {
  to = aws_vpc_security_group_ingress_rule.node_to_default_cluster
  id = "sgr-071a973fca43f20cc"
}
