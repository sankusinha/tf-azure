# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    #scalr = {
    #        source = "registry.scalr.io/scalr/scalr"
    #        version= "1.0.2"
    #}
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
  backend "remote" {
    hostname = "sanku.scalr.io"
    organization = "env-uf5ebob1hi6o810"
    workspaces {
      name = "git-poc-scalr"
    }
  }
  /*
  # Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    resource_group_name  = var.state_rg //"terraform-state-rg"
    storage_account_name = var.state_sa //"tfstatesanku"
    container_name       = var.state_container //"tfstatefiles"
    key                  = var.state_key //"dev-terraform.tfstate"
  }*/
}

provider "azurerm" {
  features {}
}

# Scalr Provider Block
#provider scalr {
#  hostname = var.hostname
#  token    = var.api_token
#}
