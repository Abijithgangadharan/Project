output "vm_public_ip" {
  description = "Public IP address of the Azure Linux Virtual Machine"
  value       = azurerm_linux_virtual_machine.example.network_interface_ids[0].ip_configuration.0.public_ip_address
}

output "vm_private_ip" {
  description = "Private IP address of the Azure Linux Virtual Machine"
  value       = azurerm_linux_virtual_machine.example.network_interface_ids[0].ip_configuration.0.private_ip_address
}
