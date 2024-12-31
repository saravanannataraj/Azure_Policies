terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.80.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  backend "remote" {
		hostname = "app.terraform.io"
		organization = "sarantforg" #The Terraform Cloud organization managing this workspace.

		workspaces {
			name = "work-az-policy"  #specific workspace within the organization to manage Terraform state files.
		}
	}
}

provider "azurerm" {
  features {}
}