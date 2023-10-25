terraform {
  required_version = "1.6.2"

  backend "local" {}
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  =  "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    ec2                    = "http://localhost:4566"
    route53                = "http://localhost:4566"
    route53resolver        = "http://localhost:4566"
    s3                     = "http://localhost:4566"
  }

  default_tags {
    tags = {
        "Environment" = "local"
        "Service"= "localstack"
    }
  }
}

