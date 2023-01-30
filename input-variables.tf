# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

# Azure Resource Group Name 
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "rg-default"
}

# Azure Resources Location
variable "resource_group_location" {
  description = "Region in which Azure Resources to be created"
  type        = string
  default     = "eastus"
}

variable "tags" {
  type = map(string)
  default = {
    "environmentr" = "POC",
    "Owner"        = "Sanku"
  }
}

# Virtual Network, Subnets and Subnet NSG's

## Virtual Network
variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
  default     = "vnet-default"
}
variable "vnet_address_space" {
  description = "Virtual Network address_space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
/* State file related variables
variable "state_rg" {
  description = "State Resource Group Name"
  type        = string
  //default     = "terraform-state-rg"
}
variable "state_sa" {
  description = "State Storage Account Name"
  type        = string
  //default     = "tfstatesanku"
}
variable "state_container" {
  description = "State Container Name"
  type        = string
  //default     = "tfstatefiles"
}
variable "state_key" {
  description = "State Key Name"
  type        = string
  //default     = "dev-terraform.tfstate"
}
*/
