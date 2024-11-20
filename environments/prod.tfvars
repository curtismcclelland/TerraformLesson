environment = "prod"
resource_group_name = "prod-resource-group"
location = "centralus"
vnet_name = "prod-vnet"
vnet_address_space = ["10.3.0.0/16"]
subnets = {
  subnet1 = "10.3.1.0/24"
}