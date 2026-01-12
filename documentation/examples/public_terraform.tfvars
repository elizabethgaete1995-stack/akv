// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"

// PRODUCT
apv_name         = "sgtd2weupurgitdmodcomm1603"
managed_rsg_name = "testpurview1603pub"
ingestion = true

public_network_enabled = true
vnt_rsg_name = "sgtd2weursgplatfoglob001"
vnt_name = "sgtd2weuvntplatfoglob001"
snt_name = "sgtd2weuvntplatfoglob001-snt69"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weu1603pubitdmodcomm001-adm"
analytics_diagnostic_monitor_enabled = true

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }