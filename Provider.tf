provider "azurerm" {
#   subscription_id = var.subscription_id
#   client_id = var.client_id
#   client_secret = var.client_secret
#   tenant_id = var.tenant_id

  features {}
}
terraform {
  required_version = ">= 0.14.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.81.0"
    }
    random = {
      version = "~> 3.5.1"
    }
  }
}