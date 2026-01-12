// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

//PRODUCT
sku_name = "premium"

//SEC
object_id = "5cc25845-a352-435b-b3ae-589f49f34ec6"

target_scenario           = false
enable_rbac_authorization = true

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuakvitdmodcommver149-adm"
analytics_diagnostic_monitor_enabled = true

//NAMING
entity           = "sgt"
environment      = "d2"
app_acronym      = "itdmod"
function_acronym = "ver"
sequence_number  = "149"



// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }