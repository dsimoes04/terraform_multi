terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.23.1"
    }
    # google    = {
    #  source  = "hashicorp/google"
    #  version = ">=5.4.0"
    # }
  }
}

provider "aws" {
  # Configuration options
  #alias  = "aws"
  region = "us-east-1"
}

provider "google" {
  # Configuration options
  alias   = "gcp"
  project = "terraform01-14122019"
  region  = "us-east1"
  zone    = "us-east1-b"
}