rgs = {
  rgs1 = {
    name     = "dev_rg"
    location = "Central India"
  }
}

vnet = {
  vnet1 = {
    name                = "dev_vnet"
    location            = "Central India"
    resource_group_name = "dev_rg"
    address_space       = ["10.0.0.0/16"]
  }
}

snet = {
  snet1 = {
    name                 = "dev_subnet"
    resource_group_name  = "dev_rg"
    virtual_network_name = "dev_vnet"
    address_prefixes     = ["10.0.0.0/24"]
  }
  snet2 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "dev_rg"
    virtual_network_name = "dev_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

bastion = {
  bastion1 = {
    bastion_name         = "dev_bastion"
    public_ip_name       = "dev-bastion-pip"
    location             = "Central India"
    resource_group_name  = "dev_rg"
    virtual_network_name = "dev_vnet"
    subnet_name          = "AzureBastionSubnet"

  }
}

vms = {
  vms1 = {
    subnet_name          = "dev_subnet"
    virtual_network_name = "dev_vnet"
    nic_name             = "dev_nic"
    location             = "Central India"
    resource_group_name  = "dev_rg"
    vm_name              = "dev-vm"
    vm_size              = "Standard_B2ats_v2"

  }
}
