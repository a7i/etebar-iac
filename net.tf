module vnet {
  source              = "Azure/vnet/azurerm"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_cidrs
  subnet_names        = var.subnet_names
  tags                = local.tags
}