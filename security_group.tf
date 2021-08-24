resource "aws_security_group" "tfer--srini-002D-TFE-002D-v4_sg-002D-03f3d7ebb9e3f979b" {
  description = "Allow access to deploy and access TFE"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["107.216.40.242/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["107.216.40.242/32"]
    from_port   = "8800"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8800"
  }

  name = "srini-TFE-v4"

  tags = {
    VPC = "srini-vpc-oregon"
  }

  tags_all = {
    VPC = "srini-vpc-oregon"
  }

  vpc_id = "vpc-0fd444ff762228144"
}

resource "aws_security_group" "tfer--srini-002D-ssh-002D-sg_sg-002D-02b4123b457795b68" {
  description = "Allow SSH access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "allow ssh"
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  name = "srini-ssh-sg"

  tags = {
    VPC = "srini-vpc-oregon"
  }

  tags_all = {
    VPC = "srini-vpc-oregon"
  }

  vpc_id = "vpc-0fd444ff762228144"
}

resource "aws_security_group" "tfer--srini-002D-vault-002D-server-002D-sg_sg-002D-0fee81184778622a4" {
  description = "For Vault Server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "8200"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "8201"
  }

  name = "srini-vault-server-sg"

  tags = {
    VPC = "srini-vpc-oregon"
  }

  tags_all = {
    VPC = "srini-vpc-oregon"
  }

  vpc_id = "vpc-0fd444ff762228144"
}
