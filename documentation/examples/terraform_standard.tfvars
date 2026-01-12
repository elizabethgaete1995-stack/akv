// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

// PRODUCT
rch_name = "sgtd2weuredispremium13123msb"
capacity = "1" #"2"
family   = "C"
sku      = "Standard"
#zones                               = ["1","2"]
#replicas                            = "2"
#redis_version = 6
shards       = "2"
start_ip     = ["107.104.46.67"]
end_ip       = ["107.104.46.68"]
name_rule    = ["first_rule"]

// VIRTUAL NETWORK - SUBNET
vnt_name     = "sgtd2weuvntplatfoglob001"
vnt_rsg_name = "sgtd2weursgplatfoglob001"
snt_name     = "sgtd2weuvntplatfoglob001-snt04"
#private_static_ip_address           = "107.105.0.136"
# Con el mismo RG y la vnet nuestra que está dentro
# vnt_name     = "sgtd2weuvntplatfoglob001"
# vnt_rsg_name = "sgtd2weursgplatfoglob001"
# snt_name     = "sgtd2weuvntplatfoglob001-snt04"
patch_windows = [
  {
    day_of_week    = "Friday"
    start_hour_utc = 6
  },
  {
    day_of_week    = "Saturday"
    start_hour_utc = 4
  }
]

// KEY VAULT
/*akv_rsg_name = "sgtd2weursgitdmodcomm001"
akv_name     = "sgtd2weuakvitdmodcomm002"*/
key_custom_enabled = false
// MONITOR DIAGNOSTICS SETTIGNS
lwk_rsg_name                 = "sgtd2weursgitdmodcomm001"
lwk_name                     = "sgtd2weulwkitdmodcomm002"
analytics_diagnostic_monitor_name = "sgtd2weuredispremium13123msb-dgm"
analytics_diagnostic_monitor_enabled = false

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
