# existing elb
data "azurerm_lb" "external" {
    name = var.elb_name
    resource_group_name = var.lb_resource_group

}

# existing elb backend pool
data "azurerm_lb_backend_address_pool" "frontend_pool" {
  name            = var.elb_pool_name
  loadbalancer_id = data.azurerm_lb.external.id
}

# existing ilb
data "azurerm_lb" "internal" {
    name = var.ilb_name
    resource_group_name = var.lb_resource_group
    
}

# existing ilb backend pool
data "azurerm_lb_backend_address_pool" "backend_pool" {
  name            = var.ilb_pool_name
  loadbalancer_id = data.azurerm_lb.internal.id
}

# existing vnet 

data "azurerm_virtual_network" "this"{
  name = var.vnet_name
  resource_group_name = var.vnet_resource_group  
}

data "azurerm_subnet" "frontend" {
  name = var.frontend_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name = var.vnet_resource_group
}

data "azurerm_subnet" "backend" {
  name = var.backend_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name = var.vnet_resource_group
}

# existing NSG
# data "azurerm_" {}

data "azurerm_virtual_machine_scale_set" "R8040_VMSS"{
    resource_group_name = var.vnet_resource_group
    name = var.old_vmss_name
}
