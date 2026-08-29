# Final batch: IAM roles + launch template.

import {
  to = aws_iam_role.cluster_service_role
  id = "eksctl-online-boutique-cluster-ServiceRole-sAfu2yja4h3E"
}

import {
  to = aws_iam_role.node_instance_role
  id = "eksctl-online-boutique-nodegroup-n-NodeInstanceRole-Cc0oVxVbcoef"
}

import {
  to = aws_launch_template.ng_general
  id = "lt-043e2680cee096046"
}
