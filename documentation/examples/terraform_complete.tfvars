// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"
sta_name = "sgtd2weustaitdimg001"
custom_text = true
custom_question = true

// KEY VAULT
akv_name                             = "sgtd2weuakvitdmodcomm002"
key_name                             = "aaakeyunit0309"
key_custom_enabled = true
uai_name = "sgtd2weuuai0309"

// PRODUCT
ach_name                      = "sgtd2weuachcustitcr0309"
acs_name                      = "sgtd2weuacscustitcr0309"
sku_name                      = "S"
kind                          = "TextAnalytics"
custom_subdomain_name         = "sgtd2domaincg0309"
replica_count                     = 1
partition_count                   = 1

//public_network_access_enabled = false
subnet_id                     = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/vnetprereq/subnets/lbtest"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weu0309searchcomm001-dgm"
analytics_diagnostic_monitor_search_name = "sgtd2weu0309searchcomm001-dgm"
lwk_search_name = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_enabled = true
analytics_diagnostic_monitor_search_enabled = true

// TAGGING
product        = "Product Test Local"
cost_center    = "CC-ITDMOD Local"
shared_costs   = "Yes"
apm_functional = "APM Test Local"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2", "local" = "local" }
