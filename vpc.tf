resource "aws_vpc" "tfer--vpc-002D-0fd444ff762228144" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.0.0.0/24"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    IaC  = "TFE"
    Name = "srini-vpc-oregon"
  }

  tags_all = {
    IaC  = "TFE"
    Name = "srini-vpc-oregon"
  }
}
