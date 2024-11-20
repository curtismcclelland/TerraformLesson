environment = "staging"
resource_group_name = "staging-resource-group"
location = "eastus2"
vnet_name = "staging-vnet"
vnet_address_space = ["10.2.0.0/16"]
subnets = {
  subnet1 = "10.2.1.0/24"
}