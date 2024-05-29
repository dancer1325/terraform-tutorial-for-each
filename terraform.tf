terraform {
  // Uncomment if you use HCP
  /*cloud {
    workspaces {
      name = "learn-terraform-for-each"
    }
  }*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30.0"
    }
  }

  required_version = "~> 1.2"
}
