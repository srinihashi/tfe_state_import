provider "aws" {
  region = "us-west-2"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 3.55.0"
		}
  }
}
