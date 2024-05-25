provider "azurerm" {
  features {}
}

data "azurerm_api_management" "existing_apim" {
  name                = var.apim_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_api_management_api" "api" {
  name                = var.api_name
  resource_group_name = data.azurerm_api_management.existing_apim.resource_group_name
  api_management_name = data.azurerm_api_management.existing_apim.name
  revision            = var.revision
  display_name        = var.display_name
  path                = var.path
  protocols           = var.protocols
  service_url         = var.service_url

  import {
    content_format = var.import_content_format
    content_value  = var.import_content_value
  }
}

