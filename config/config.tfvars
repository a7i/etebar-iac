name = "etebar"

location = "eastus2"

address_space = "10.0.0.0/16"

subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]

subnet_names = ["subnet1", "subnet2"]

vm_info = {
  name                = "etebarcpa"
  vm_hostname         = "etebarcpa"
  public_ip_dns       = ["etebarcpa"]
  allocation_method   = "Static"
  nb_public_ip        = 1
  vm_os_simple        = "WindowsServer"
  vm_os_publisher     = "MicrosoftWindowsServer"
  vm_os_offer         = "WindowsServer"
  vm_os_sku           = "2019-Datacenter"
  vm_size             = "Standard_B2MS"
  is_windows_image    = true
  nb_data_disk        = 1
  data_disk_size_gb   = 64
  data_sa_type        = "Premium_LRS"
  boot_diagnostics    = true
}