## Locals
# Define variables for local scope
locals {
  geo_region = lookup(local.regions, local.location)
  mds_lwk_enabled            = var.analytics_diagnostic_monitor_enabled && (var.analytics_diagnostic_monitor_lwk_id != null || (var.analytics_diagnostic_monitor_lwk_name != null && local.rsg_lwk != null))
  mds_sta_enabled            = var.analytics_diagnostic_monitor_enabled && (var.analytics_diagnostic_monitor_sta_id != null || (var.analytics_diagnostic_monitor_sta_name != null && var.analytics_diagnostic_monitor_sta_rsg != null))
  mds_aeh_enabled            = var.analytics_diagnostic_monitor_enabled && (var.analytics_diagnostic_monitor_aeh_name != null && (var.eventhub_authorization_rule_id != null || (var.analytics_diagnostic_monitor_aeh_namespace != null && var.analytics_diagnostic_monitor_aeh_rsg != null)))
  rsg_lwk                    = var.analytics_diagnostic_monitor_lwk_rsg != null ? var.analytics_diagnostic_monitor_lwk_rsg : var.rsg_name
  location                   = var.location != null ? var.location : data.azurerm_resource_group.rsg_principal.location

}

data "azurerm_resource_group" "rsg_principal" {
  name = var.rsg_name
}

data "azurerm_log_analytics_workspace" "lwk_principal" {
  count = local.mds_lwk_enabled && var.analytics_diagnostic_monitor_lwk_id == null ? 1 : 0

  name                = var.lwk_name
  resource_group_name = local.rsg_lwk
}

data "azurerm_storage_account" "mds_sta" {
  count               = local.mds_sta_enabled && var.analytics_diagnostic_monitor_sta_id == null ? 1 : 0
  name                = var.analytics_diagnostic_monitor_sta_name
  resource_group_name = var.analytics_diagnostic_monitor_sta_rsg
}

data "azurerm_eventhub_namespace_authorization_rule" "mds_aeh" {
  count               = local.mds_aeh_enabled && var.eventhub_authorization_rule_id == null ? 1 : 0
  name                = var.analytics_diagnostic_monitor_aeh_policy
  resource_group_name = var.analytics_diagnostic_monitor_aeh_rsg
  namespace_name      = var.analytics_diagnostic_monitor_aeh_namespace
}

data "azurerm_monitor_diagnostic_categories" "akv" {
  resource_id = resource.azurerm_key_vault.akv_sa.id
}

###################################################
###################################################
# USEFUL CODE #
###################################################
###################################################
#Key Vault"

resource "azurerm_key_vault" "akv_sa" {
  name                = join("", [var.app_name, var.location, var.entity,var.environment, var.sequence_number])
  location            = var.location
  resource_group_name = var.rsg_name
  tenant_id                       = var.arm_tenant_id
  purge_protection_enabled        = true
  enabled_for_disk_encryption     = var.target_scenario ? true : false
  enabled_for_deployment          = var.deploy
  enabled_for_template_deployment = var.target_scenario ? true : false
  sku_name                        = var.sku_name
  enable_rbac_authorization       = var.enable_rbac_authorization

  network_acls {
    default_action             = "Deny"
    bypass                     = var.target_scenario ? "AzureServices" : "None"
    ip_rules                   = distinct(compact(concat(var.ip_rules)))
    virtual_network_subnet_ids = var.virtual_network_subnet_ids
  }

  #tags = var.inherit ? module.tags.tags : module.tags.tags_complete

}

resource "azurerm_key_vault_access_policy" "kvt_access_policy" {
  count = !var.enable_rbac_authorization ? 1 : 0

  key_vault_id = azurerm_key_vault.akv_sa.id
  tenant_id    = var.arm_tenant_id
  object_id    = var.object_id

  key_permissions = [
    "Encrypt",
    "Decrypt",
    "WrapKey",
    "UnwrapKey",
    "Sign",
    "Verify",
    "Get",
    "List",
    "Create",
    "Update",
    "Import",
    "Delete",
    "Backup",
    "Restore",
    "Recover",
    "Purge",
    "SetRotationPolicy",
    "GetRotationPolicy",
    "Rotate"
  ]

  secret_permissions = [
    "Get",
    "List",
    "Set",
    "Delete",
    "Backup",
    "Restore",
    "Recover",
    "Purge"
  ]

  certificate_permissions = [
    "Get",
    "List",
    "Delete",
    "Create",
    "Import",
    "Update",
    "ManageContacts",
    "GetIssuers",
    "ListIssuers",
    "SetIssuers",
    "DeleteIssuers",
    "ManageIssuers",
    "Recover",
    "Purge",
    "Backup",
    "Restore"
  ]

  storage_permissions = [
    "Get",
    "List",
    "Delete",
    "Set",
    "Update",
    "RegenerateKey",
    "Recover",
    "Purge",
    "Backup",
    "Restore",
    "SetSAS",
    "ListSAS",
    "GetSAS",
    "DeleteSAS"
  ]
}

resource "azurerm_role_assignment" "kv_role_assignment" {
  count                = var.enable_rbac_authorization ? 1 : 0
  scope                = azurerm_key_vault.akv_sa.id
  role_definition_name = "Key Vault Administrator"
  principal_id         = var.object_id
}

resource "azurerm_monitor_diagnostic_setting" "law" {

  count = local.diagnostic_monitor_enabled ? 1 : 0

  name                           = var.analytics_diagnostic_monitor_name
  target_resource_id             = azurerm_key_vault.akv_sa.id
  log_analytics_workspace_id     = local.mds_lwk_enabled ? (var.analytics_diagnostic_monitor_lwk_id != null ? var.analytics_diagnostic_monitor_lwk_id : data.azurerm_log_analytics_workspace.lwk_principal[0].id) : null
  eventhub_name                  = local.mds_aeh_enabled ? var.analytics_diagnostic_monitor_aeh_name : null
  eventhub_authorization_rule_id = local.mds_aeh_enabled ? (var.eventhub_authorization_rule_id != null ? var.eventhub_authorization_rule_id : data.azurerm_eventhub_namespace_authorization_rule.mds_aeh[0].id) : null
  storage_account_id             = local.mds_sta_enabled ? (var.analytics_diagnostic_monitor_sta_id != null ? var.analytics_diagnostic_monitor_sta_id : data.azurerm_storage_account.mds_sta[0].id) : null

  dynamic "enabled_log" {
    for_each = data.azurerm_monitor_diagnostic_categories.akv.log_category_types
    content {
      category = enabled_log.value
    }
  }

  dynamic "metric" {
    for_each = data.azurerm_monitor_diagnostic_categories.akv.metrics
    content {
      category = metric.value
    }
  }
}

