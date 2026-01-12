// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

// PRODUCT
lba_name                      = "sgtd2weurslbtest881122cvn"
sku_name                      = "Standard"
private_ip_address_allocation = "Dynamic"
frontend_private_ip_addresses = [
  {
    name = "IPAddress"
    ip   = "107.105.0.78"
  }
]
lb_port = {
  https = ["443", "Tcp", "9005", "IPAddress", "Tcp", "9005", null]
}

# Add VMs to Backend Pool 
ip_configuration_name = ["sgtd2weudotw001-ip01"]
network_interface_id  = ["/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgnimbuscomm001/providers/Microsoft.Network/networkInterfaces/sgtd2weudotw001-nic01"]

// VIRTUAL NETWORK - SUBNET
vnt_rsg_name = "sgtd2weursgplatfoglob001"
vnt_name     = "sgtd2weuvntplatfoglob001"
snt_name     = "sgtd2weuvntplatfoglob001-snt02"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm002"
analytics_diagnostic_monitor_name    = "sgtd2weulbaitdmodcomm002-bgt240710"
analytics_diagnostic_monitor_enabled = true


// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
