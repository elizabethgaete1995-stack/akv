// COMMON VARIABLES
rsg_name           = "sgtd2weursgitdmodcomm001"
location           = "westeurope"
akv_name           = "sgtd2weuakvitdmodcomm002"
key_name           = "aamykeyacs200"
key_custom_enabled = true

// PRODUCT
acs_name                           = "sgtd2weucogcustitcropenai299"
sku_name                           = "S0"
kind                               = "OpenAI"
custom_subdomain_name              = "sgtd2domaincgopenai299"
local_auth_enabled                 = true
uai_name                           = "sgtd2weuopenai"
outbound_network_access_restricted = false

deployment = {}


/*network_acls = [{
    ip_rules       = ["100.10.18.123", "127.0.0.1"]
    virtual_network_rules =[{
        subnet_id = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/vnetprereq/subnets/lbtest"
    },
    {
      subnet_id = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/vnetprereq/subnets/ase_test"  
    },
    {
        subnet_id = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Network/virtualNetworks/sgtd2weuvntmodtstcomm001/subnets/default"
    }]
}]*/

// MONITOR DIAGNOSTICS SETTINGS
analytics_diagnostic_monitor_lwk_id        = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.OperationalInsights/workspaces/sgtd2weulwkitdmodcomm001"        
#lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
#lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuopenaiitdmodcomm299-adm"
analytics_diagnostic_monitor_enabled = true

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }

