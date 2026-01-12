// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

//PRODUCT
sku_name = "premium"

//SEC
object_id = "5cc25845-a352-435b-b3ae-589f49f34ec6"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuakvitdmodcomm901-adm"
analytics_diagnostic_monitor_enabled = true

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

# Optional Tags
optional_tags = ({
  entity                   = "sgt"
  environment              = "dev"
  APM_technical            = "APM tech Test"
  business_service         = "Business Service Test"
  service_component        = "Service Component Test"
  description              = "Description Test"
  backup                   = "no"
})

# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
