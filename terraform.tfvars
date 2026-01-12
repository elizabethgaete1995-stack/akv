// COMMON VARIABLES
rsg_name       = "rg-poc-test-001"
location       = "chl"

//PRODUCT
sku_name = "premium"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "rg-poc-test-001"
lwk_name                             = "lwkchilecentrallwkdev001"
analytics_diagnostic_monitor_name    = "akv-poc-dev-chl-001-adm"
analytics_diagnostic_monitor_enabled = true
analytics_diagnostic_monitor_enabled = false


// NAMING VARIABLES
entity         = "akv"
environment    = "dev"
app_acronym    = "poc"
sequence_number = "001"

// TAGGING
custom_tags = {
 app_name ="akv"
 cost_center ="CC-Test" 
 tracking_cod ="POC"
 # Custom tags
 custom_tags = { "1" = "1", "2" = "2" }
}
