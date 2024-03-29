variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "Location for the Azure Resource Group"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the Azure virtual network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Azure subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the Azure subnet"
  type        = string
}

variable "network_interface_name" {
  description = "Name of the Azure network interface"
  type        = string
}

variable "private_ip_allocation" {
  description = "Private IP address allocation method"
  type        = string
  default     = "Dynamic"
}

variable "vm_name" {
  description = "Name of the Azure virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the Azure virtual machine"
  type        = string

  validation {
    condition     = contains(["Standard_DS2_v2", "Standard_F2", "Standard_NV6", "Standard_NC6", "Standard_HB120-32rs_v2", "Standard_HC44rs"], var.vm_size)
    error_message = "Invalid VM size. Please choose from a valid size."
  }
}




variable "ssh_public_key_path" {
  description = "Path to your SSH public key file"
  type        = string
}