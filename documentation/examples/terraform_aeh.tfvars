// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

//PRODUCT
sku_name = "premium"

//SEC
object_id = "5cc25845-a352-435b-b3ae-589f49f34ec6"

// MONITOR DIAGNOSTICS SETTINGS
analytics_diagnostic_monitor_name    = "sgtd2weuakvitdmodcomm2811"
analytics_diagnostic_monitor_enabled = true

eventhub_authorization_rule_id        = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
analytics_diagnostic_monitor_aeh_name = "eventhub-nms"

//NAMING
entity           = "sgt"
environment      = "d2"
app_acronym      = "itdmod"
function_acronym = "com"
sequence_number  = "2811"



// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2", "3" = "3" }