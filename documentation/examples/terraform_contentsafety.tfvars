// COMMON VARIABLES
rsg_name           = "sgtd2weursgitdmodcomm001"
location           = "westeurope"
akv_name           = "sgtd2weuakvitdmodcomm002"
key_name           = "aamykeyacs152"
key_custom_enabled = true

// PRODUCT
acs_name                           = "sgtd2weucogcustitcrcs152"
sku_name                           = "S0"
kind                               = "ContentSafety"
custom_subdomain_name              = "sgtd2domaincgcs152"
local_auth_enabled                 = true
uai_name                           = "sgtd2weuopenai"
outbound_network_access_restricted = false

deployment = {}

public_network_access_enabled = true
network_acls = [{
  ip_rules = ["100.10.18.123", "127.0.0.1"]
  virtual_network_rules = [{
    subnet_id = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/vnetprereq/subnets/lbtest"
    },
    {
      subnet_id = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/vnetprereq/subnets/ase_test"
    },
    {
      subnet_id = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/sgtd2weuvntmodtstcomm001/subnets/default"
  }]
}]

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuopenaiitdmodcomm1412ple-adm"
analytics_diagnostic_monitor_enabled = true
analytics_diagnostic_monitor_sta_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_name = "sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_rsg = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_rsg       = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_namespace = "sgtd2weuaehitdmodcomm001"
analytics_diagnostic_monitor_aeh_name      = "sgtd2weuaehitdmodcomm001-testaeh"
#eventhub_authorization_rule_id = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
#analytics_diagnostic_monitor_aeh_name = "eventhub-nms"

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }

