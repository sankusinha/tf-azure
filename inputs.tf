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

variable "rg_existing_name" {
  description = "Existing resource group as data resource"
  type = string
}
variable "hostname" {
  description = "Scalr hostname"
  type = string
}
variable "api_token" {
  description = "Scalr api_token"
  type = string
}
