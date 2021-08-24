resource "aws_security_group_rule" "tfer--sg-002D-0037649955befe6b7_egress_tcp_1025_65535_sg-002D-0b66766e80b134b57" {
  description              = "Allow control plane to communicate with worker nodes in group ng-592dde04 (kubelet and workload TCP ports)"
  from_port                = "1025"
  protocol                 = "tcp"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-cluster-002D-ControlPlaneSecurityGroup-002D-1APGKATVLOVL_sg-002D-0037649955befe6b7_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-nodegroup-002D-ng-002D-592dde04-002D-SG-002D-9C0ICLSRE8NE_sg-002D-0b66766e80b134b57_id}"
  to_port                  = "65535"
  type                     = "egress"
}

resource "aws_security_group_rule" "tfer--sg-002D-0037649955befe6b7_egress_tcp_443_443_sg-002D-0b66766e80b134b57" {
  description              = "Allow control plane to communicate with worker nodes in group ng-592dde04 (workloads using HTTPS port, commonly used with extension API servers)"
  from_port                = "443"
  protocol                 = "tcp"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-cluster-002D-ControlPlaneSecurityGroup-002D-1APGKATVLOVL_sg-002D-0037649955befe6b7_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-nodegroup-002D-ng-002D-592dde04-002D-SG-002D-9C0ICLSRE8NE_sg-002D-0b66766e80b134b57_id}"
  to_port                  = "443"
  type                     = "egress"
}

resource "aws_security_group_rule" "tfer--sg-002D-0037649955befe6b7_ingress_tcp_443_443_sg-002D-0b66766e80b134b57" {
  description              = "Allow control plane to receive API requests from worker nodes in group ng-592dde04"
  from_port                = "443"
  protocol                 = "tcp"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-cluster-002D-ControlPlaneSecurityGroup-002D-1APGKATVLOVL_sg-002D-0037649955befe6b7_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-nodegroup-002D-ng-002D-592dde04-002D-SG-002D-9C0ICLSRE8NE_sg-002D-0b66766e80b134b57_id}"
  to_port                  = "443"
  type                     = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-002D-0bd62d8ce7d84283a_egress_-002D-1_0_65536_0-002E-0-002E-0-002E-0-002F-0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "0"
  protocol          = "-1"
  security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-cluster-002D-ClusterSharedNodeSecurityGroup-002D-1TXSR13XNHJU7_sg-002D-0bd62d8ce7d84283a_id}"
  to_port           = "0"
  type              = "egress"
}

resource "aws_security_group_rule" "tfer--sg-002D-0bd62d8ce7d84283a_ingress_-002D-1_0_65536_sg-002D-0bd62d8ce7d84283a" {
  description       = "Allow nodes to communicate with each other (all ports)"
  from_port         = "0"
  protocol          = "-1"
  security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-cluster-002D-ClusterSharedNodeSecurityGroup-002D-1TXSR13XNHJU7_sg-002D-0bd62d8ce7d84283a_id}"
  self              = "true"
  to_port           = "0"
  type              = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-002D-0bd62d8ce7d84283a_ingress_-002D-1_0_65536_sg-002D-0c6cbc244cddc2aeb" {
  description              = "Allow managed and unmanaged nodes to communicate with each other (all ports)"
  from_port                = "0"
  protocol                 = "-1"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eksctl-002D-floral-002D-rainbow-002D-1604884529-002D-cluster-002D-ClusterSharedNodeSecurityGroup-002D-1TXSR13XNHJU7_sg-002D-0bd62d8ce7d84283a_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--eks-002D-cluster-002D-sg-002D-floral-002D-rainbow-002D-1604884529-002D-877225857_sg-002D-0c6cbc244cddc2aeb_id}"
  to_port                  = "0"
  type                     = "ingress"
}
