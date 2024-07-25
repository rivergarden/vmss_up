# existing elb
data "azurerm_lb" "external" {
    name = "custom-frontend-lb"
    resource_group_name = var.lb_resource_group

}

# existing elb backend pool name

# existing ilb
data "azurerm_lb" "internal" {
    name = "custom-backend-lb"
    resource_group_name = var.lb_resource_group
    
}

# existing ilb backend pool name

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
# existing vnet name 

# existing NSG



