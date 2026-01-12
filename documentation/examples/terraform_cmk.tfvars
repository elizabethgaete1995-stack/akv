// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

// PRODUCT
aeh_name                       = "aehtest2803"
event_hub_sku_tier             = "Standard"
event_hub_sku_capacity         = 1
enable_auto_inflate            = true
event_hub_max_throughput_units = 1

topics = [
  {
    name              = "sgtd2weuaehitdmodcomm001v1EH1new"
    partition_count   = 3
    message_retention = 1
    use_capture = true
    capture = {
      enabled = true
      encoding = "Avro"
      destination = {
        name                = "EventHubArchive.AzureBlockBlob"
        archive_name_format = "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}"
        blob_container_name = "test-capture-aeh"
        storage_account_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
      }
    }
  },
  {
    name              = "sgtd2weuaehitdmodcomm001v1EH2new"
    partition_count   = 2
    message_retention = 3
    use_capture = true
    capture = {
      enabled = true
      encoding = "Avro"
      destination = {
        name                = "EventHubArchive.AzureBlockBlob"
        archive_name_format = "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}"
        blob_container_name = "test-capture-aeh2"
        storage_account_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
      }
    }
  }
]
zone_redundant                                       = true
nw_rulesets_default_action                           = "Deny"
ip_rules                                             = ["10.4.3.1", "11.0.0.0/24"]
enable_firewall_bypass_to_trusted_microsoft_services = false
ignore_missing_virtual_network_service_endpoint      = false
event_hub_snet_ids = ["/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgplatfoglob001/providers/Microsoft.Network/virtualNetworks/sgtd2weuvntplatfoglob001/subnets/sgtd2weuvntplatfoglob001-snt68"]
capture_enabled     = true
encoding            = "Avro"
dest_name           = "EventHubArchive.AzureBlockBlob"
archive_name_format = "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}"
blob_container_name = "test-capture-aeh"
dest_sta_id         = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"

// KEY VAULT
akv_name                = "sgtd2weuakvitdmodcomm002"
key_name                = "aaakeyunit"


// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm002"
analytics_diagnostic_monitor_name    = "sgtd2weudgmitdmodcomm001-dev2803-dgm"
analytics_diagnostic_monitor_enabled = true
#analytics_diagnostic_monitor_sta_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_name = "sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_rsg = "sgtd2weursgitdmodcomm001"
#analytics_diagnostic_monitor_aeh_rsg = "sgtd2weursgitdmodcomm001"
#analytics_diagnostic_monitor_aeh_namespace = "sgtd2weuaehitdmodcomm001"
#analytics_diagnostic_monitor_aeh_name = "sgtd2weuaehitdmodcomm001-testaeh"
#eventhub_authorization_rule_id = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
#analytics_diagnostic_monitor_aeh_name = "eventhub-nms"

// TAGGING
inherit = false
product        = "product"
cost_center    = "cost"
#shared_costs   = ""
apm_functional = "apm"
cia            = "CMM"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
