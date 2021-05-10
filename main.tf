#terraform {
#  required_providers {
#    azurerm = {
#      source  = "hashicorp/azurerm"
#      version = ">=2.6.0"
#    }
#  }
#
#
#  backend "remote" {
#    hostname     = "tfdev.corp.jefco.com"
#    organization = "Jefferies"
#    workspaces {
#      name = "azurerm-cmrs-dev-eastus2"
#    }
#  }
#}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.55.0"
    }
  }
}

# Terraform provider will be configured using env variables
# This comes from ideas of 12factorapp 
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret#configuring-the-service-principal-in-terraform
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "aakulov-example3"
  location = "West Europe"
}
