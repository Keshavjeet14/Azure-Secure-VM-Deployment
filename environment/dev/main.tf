module "resource_group" {
  source = "../../child_modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../child_modules/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../child_modules/azurerm_subnet"
  snet       = var.snet
}

module "bastion" {
  depends_on = [module.subnet]
  source     = "../../child_modules/azurerm_bastion"
  bastion    = var.bastion
}

module "virtual_machine" {
  depends_on = [module.subnet]
  source     = "../../child_modules/azurerm_virtual_machine"
  vms        = var.vms
}
