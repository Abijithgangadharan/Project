resource "azurerm_linux_virtual_machine" "example" {
  name                = var.vm_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  size                = var.vm_size

  admin_username = var.admin_username
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.ssh_public_key_path)
  }

  custom_data = base64encode(file("scripts/startup_script.sh"))

  network_interface_ids = [azurerm_network_interface.example.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.source_image.publisher
    offer     = var.source_image.offer
    sku       = var.source_image.sku
    version   = var.source_image.version
  }


  computer_name = var.vm_name

    # Adding tags to the virtual machine
  tags = {
    environment = var.environment
    owner       = var.owner
    project     = var.project
  }
  
}
