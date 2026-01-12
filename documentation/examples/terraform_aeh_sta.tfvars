// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

// PRODUCT
rch_name = "sgtd2weuredispremium13123msb"
capacity = "1" #"2"
family   = "P"
sku      = "Premium"
#zones                               = ["1","2"]
#replicas                            = "2"
#redis_version = 6
shards       = "2"
start_ip     = ["107.104.46.128"]
end_ip       = ["107.104.46.254"]
name_rule    = ["second_rule"]

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
akv_rsg_name = "sgtd2weursgitdmodcomm001"
akv_name     = "sgtd2weuakvitdmodcomm002"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weutestsbqueueaodf29923pol-dgm"
analytics_diagnostic_monitor_enabled = false
analytics_diagnostic_monitor_sta_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_name = "sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_rsg = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_rsg = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_namespace = "sgtd2weuaehitdmodcomm001"
analytics_diagnostic_monitor_aeh_name = "sgtd2weuaehitdmodcomm001-testaeh"
#eventhub_authorization_rule_id = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
#analytics_diagnostic_monitor_aeh_name = "eventhub-nms"

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
