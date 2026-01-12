// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

//PRODUCT
sku_name = "premium"

//SEC
object_id = "5cc25845-a352-435b-b3ae-589f49f34ec6"

// MONITOR DIAGNOSTICS SETTINGS
analytics_diagnostic_monitor_name     = "sgtd2weuakvitdmodcomm901-adm"
analytics_diagnostic_monitor_enabled  = true
analytics_diagnostic_monitor_sta_name = "sgtd2weustaitdmodcomm001"
analytics_diagnostic_monitor_sta_rsg  = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_sta_id   = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"

//NAMING
entity           = "sgt"
environment      = "d2"
app_acronym      = "itdmod"
function_acronym = "comm"
sequence_number  = "901"



// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
