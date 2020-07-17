variable name {
  description = "Name applies to all resources"
  type        = string
}

variable location {
  description = "Region to be used to provision resources"
  type        = string
}

variable address_space {
  description = "The address space that is used the virtual network."
  type        = string
}

variable subnet_cidrs {
  description = "The address spaces that are used for the subnetwork."
  type        = list
}

variable subnet_names {
  description = "The names that are used for the subnetwork."
  type        = list
}

variable vm_info {
  description = "The object that holds are vm info."
  type = object({
    name              = string
    public_ip_dns     = list(string)
    allocation_method = string
    nb_public_ip      = number
    vm_os_simple      = string
    vm_os_publisher   = string
    vm_os_offer       = string
    vm_os_sku         = string
    vm_size           = string
    is_windows_image  = bool
    nb_data_disk      = number
    data_disk_size_gb = number
    data_sa_type      = string
    boot_diagnostics  = bool
  })
}