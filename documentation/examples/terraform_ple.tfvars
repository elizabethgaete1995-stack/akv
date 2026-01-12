// COMMON VARIABLES
rsg_name           = "sgtd2weursgitdmodcomm001"
location           = "westeurope"
akv_name           = "sgtd2weuakvitdmodcomm002"
key_name           = "aamykeyoai141223ple"
key_exist          = true
key_custom_enabled = true

// PRODUCT
acs_name                           = "sgtd2weucogcustitcroai1412ple"
sku_name                           = "S0"
kind                               = "OpenAI"
custom_subdomain_name              = "sgtd2domaincgoai141223ple"
local_auth_enabled                 = true
uai_name                           = "sgtd2weuoai1412ple"
outbound_network_access_restricted = false

//deployment                             = {}


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

deployment = {
  /*"datoai-gpt-35-turbo" = {
    name           = "datoai-gpt-35-turbo"
    model_format   = "OpenAI"
    model_name     = "gpt-35-turbo"
    model_version  = "0301"
    scale_type     = "Standard"
    scale_tier     = null
    scale_size     = null
    scale_family   = null
    scale_capacity = 240
    },*/
  "datoai-text-embedding-ada-002" = {
    name           = "datoai-text-embedding-ada-002"
    model_format   = "OpenAI"
    model_name     = "text-embedding-ada-002"
    model_version  = "2"
    scale_type     = "Standard"
    scale_tier     = null
    scale_size     = null
    scale_family   = null
    scale_capacity = 5
  }
}

eventhub_authorization_rule_id        = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
analytics_diagnostic_monitor_aeh_name = "eventhub-nms"

//PLE
create_ple        = true
location_ple      = "westeurope"
subresource_names = ["account"]

assoc_asg = false
//asg_name = "myasgtestple"
// VIRTUAL NETWORK - SUBNET
snt_name              = "sgtd2weuvntplatfoglob001-snt69"
vnt_name              = "sgtd2weuvntplatfoglob001"
vnt_rsg_name          = "sgtd2weursgplatfoglob001"
first_sequence_number = 5

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuopenaiitdmodcomm1412ple-adm"
analytics_diagnostic_monitor_enabled = true

// TAGGING
product        = "Product Test change"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2", "3" = "3" }