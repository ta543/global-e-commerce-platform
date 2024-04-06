terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "global-ecommerce-platform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-terraform-lock-table"
  }
}

terraform {
  backend "gcs" {
    bucket  = "my-terraform-state-bucket"
    prefix  = "global-ecommerce-platform/terraform"
  }
}

terraform {
  backend "azurerm" {
    resource_group_name   = "MyResourceGroup"
    storage_account_name  = "myterraformstate"
    container_name        = "tfstate"
    key                   = "global-ecommerce-platform/terraform.tfstate"
  }
}



