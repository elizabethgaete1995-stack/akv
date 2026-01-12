## COMO NO TENEMOS ENTORNO DE PRODUCCIÓN O PREPRODUCCIÓN DE PRUEBA ESTA PRUEBA NO CIFRA Y APLICA EL TRUST
// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

// PRODUCT
acr_name                      = "acrweuadf2001STalev2004"
sku_name                      = "Premium"
public_network_access_enabled = true
uai_name                      = "acrweuadf2001STalev2004"
acr_security_level            = "sa"
georeplications = [{
  location                  = "eastus"
  regional_endpoint_enabled = true
  zone_redundancy_enabled   = true
  tags                      = {}
}]

network_rule_set = [
  {
    default_action = "Deny"
    ip_rule = [{
      action   = "Allow"
      ip_range = "180.156.105.0/24"
      },
      {
        action   = "Allow"
        ip_range = "51.105.242.66/32"
      },
      {
        action   = "Allow"
        ip_range = "51.138.73.204/32"
      },
      {
        action   = "Allow"
        ip_range = "40.114.160.224/28"
      },
      {
        action   = "Allow"
        ip_range = "193.127.200.187/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.200.188/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.200.35/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.200.36/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.200.41/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.151/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.153/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.152/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.148/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.149/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.156/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.173/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.207.183/32"
      },
      {
        action   = "Allow"
        ip_range = "195.149.215.60/32"
      },
      {
        action   = "Allow"
        ip_range = "195.149.215.61/32"
      },
      {
        action   = "Allow"
        ip_range = "195.149.215.232/32"
      },
      {
        action   = "Allow"
        ip_range = "195.149.215.235/32"
      },
      {
        action   = "Allow"
        ip_range = "195.149.215.238/32"
      },
      {
        action   = "Allow"
        ip_range = "195.149.215.225/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.193.44/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.193.53/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.217.10/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.229.35/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.200.42/32"
      },
      {
        action   = "Allow"
        ip_range = "193.127.195.0/24"
      },
      {
        action   = "Allow"
        ip_range = "193.127.177.0/24"
      },
      {
        action   = "Allow"
        ip_range = "146.112.0.0/16"
      },
      {
        action   = "Allow"
        ip_range = "155.190.0.0/18"
    }]
}]

// KEY VAULT
akv_rsg_name       = "sgtd2weursgitdmodcomm001"
akv_name           = "sgtd2weuakvitdmodcomm002"
key_name           = "akeyacradf2001STalev2004"
key_custom_enabled = true

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm002"
analytics_diagnostic_monitor_name    = "acrweutestadf2001STalev2004-dgm"
analytics_diagnostic_monitor_enabled = true

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "ALL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
