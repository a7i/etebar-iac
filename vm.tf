module windowsservers {
  source              = "Azure/compute/azurerm"
  vm_hostname         = var.vm_info.name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  admin_password      = random_password.password.result
  public_ip_dns       = var.vm_info.public_ip_dns
  allocation_method   = var.vm_info.allocation_method
  nb_public_ip        = var.vm_info.nb_public_ip
  vnet_subnet_id      = module.vnet.vnet_subnets[0]
  vm_os_simple        = var.vm_info.vm_os_simple
  vm_os_publisher     = var.vm_info.vm_os_publisher
  vm_os_offer         = var.vm_info.vm_os_offer
  vm_os_sku           = var.vm_info.vm_os_sku
  vm_size             = var.vm_info.vm_size
  is_windows_image    = var.vm_info.is_windows_image
  nb_data_disk        = var.vm_info.nb_data_disk
  data_disk_size_gb   = var.vm_info.data_disk_size_gb
  data_sa_type        = var.vm_info.data_sa_type
  boot_diagnostics    = var.vm_info.boot_diagnostics
  tags                = local.tags
}

resource random_password password {
  length           = 16
  special          = true
  override_special = "_@"
}