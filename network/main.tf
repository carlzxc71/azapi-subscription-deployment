locals {
  subscription_network_configuration = [
    {
      name = "DEV"
      id   = "<subsciption-id>"
      network_configuration = [
        {
          vnet_name = "vnet-${var.environment}-${var.location_short}"
          vnet_address_space = "10.0.0.0/24"
          subnet_name   = "servers"
          subnet_address_prefix = ["10.0.0.0/24"]
          remote_virtual_network_peer_id = "<remote-vnet-peer-id>"
        }
      ]
    },
    {
      name = "PROD"
      id   = "<subsciption-id>"
      network_configuration = [
        {
          vnet_name = "vnet-${var.environment}-${var.location_short}"
          vnet_address_space = "10.0.1.0/24"
          subnet_name   = "servers"
          subnet_address_prefix = ["10.0.1.0/24"]
          remote_virtual_network_peer_id = "<remote-vnet-peer-id>"
        }
      ]
    }
  ]
}