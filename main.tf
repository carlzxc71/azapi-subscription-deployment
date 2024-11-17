terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "2.0.1"
    }
  }
}

provider "azapi" {}

locals {
  list_of_subscriptions = [
    {
      name = "sub-name"
      id   = "sub-id"
    },
    {
      name = "sub-name"
      id   = "sub-id"
    }
  ]
}

resource "azapi_resource" "rg" {
  for_each = { for subscription in local.list_of_subscriptions : subscription.id => subscription }

  type      = "Microsoft.Resources/resourceGroups@2024-03-01"
  name      = "rg-${var.environment}-${var.location_short}-azapi"
  parent_id = "/subscriptions/${each.key}"
  location  = var.location
}
