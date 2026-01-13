// COMMON VARIABLES
rsg_name       = "rg-poc-test-001"
location       = "chilecentral"
subscription_id = "ef0a94be-5750-4ef8-944b-1bbc0cdda800"
arm_tenant_id   = "fe6c41e5-a3e4-4d16-82df-1b33029102eb"
//PRODUCT
sku_name = "premium"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "rg-poc-test-001"
lwk_name                             = "lwkchilecentrallwkdev001"
analytics_diagnostic_monitor_name    = "akv-poc-dev-chl-001-adm"
analytics_diagnostic_monitor_enabled = true

// NAMING VARIABLES
entity         = "akv"
environment    = "dev"
app_acronym    = "poc"
function_acronym = "crit"
sequence_number = "001"

// TAGGING
app_name ="lwk"
cost_center ="CC-Test" 
tracking_cod ="POC"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
