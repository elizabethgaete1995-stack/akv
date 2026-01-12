//COMMOM
subscription_id = "ebac6c00-3c2f-4d56-82c0-8057225d44fa"
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"
enable_http2 = true
public_config = false

//PRODUCT
agw_name      = "sgtd2weuagwitdmodcomm556"
sku_name      = "Standard_v2"
sku_tier      = "Standard_v2"
capacity      = { min = 2, max = 10 }
cipher_suites = ["TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"]

private_ip = "10.4.27.15"

# Backend Address Pool NIC Asssociation
create_backend_nic = true
network_interfaces = ["nic-avm","nic-aodf"] #As many as the number of backend_address_pools
subnet_ids_nic_association = ["/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgplatfoglob001/providers/Microsoft.Network/virtualNetworks/sgtd2weuvntplatfoglob001/subnets/sgtd2weuvntplatfoglob001-snt61", "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgplatfoglob001/providers/Microsoft.Network/virtualNetworks/sgtd2weuvntplatfoglob001/subnets/sgtd2weuvntplatfoglob001-snt61"]
private_ip_addresses_nic_association = ["107.105.0.228","107.105.0.230"] #Static IP addresses located in the specified subnet, only if private_ip_address_allocation is Static. As many as network_interfaces and backend_address_pools there are. IMPORTANT: the IP addresses needs to be located in the subnet_id, and needs to be different from the IPs configured within the app gateway (backend_address_pools)
private_ip_address_allocation        = "Static"

backend_address_pools = [
  {

    name  = "app-test-bapool"
    fqdns = ["sgtd2weuappitdmodcomm556.azurewebsites.net"]

    ip    = []
  },
  {

    name  = "app-test-bapool2"
    fqdns = ["sgtd2weuappitdmodcomm556.azurewebsites.net"]

    ip    = []
  }
]
frontend_port = ["80"]
backend_http_settings = [
  {
    cookie_based_affinity           = "Disabled"
    name                            = "app-test-80-bhset"
    path                            = ""
    port                            = 80
    protocol                        = "Http"
    request_timeout                 = 600
    host_name                       = "app-test.azurewebsites.com"
    probe_name                      = "app-test-80-probe"
    connection_draining_enabled     = false
    connection_draining_timeout_sec = 3600
    pick_hostname                   = false
    auth_certs                      = null #["trsrootcert"] # Refers to 'trusted_root_certificates' (name) variable 
  }
]

# certificates_path = "./certs/"

# trusted_root_certificates = [
#     {
#         name = "wildcartCARoot",
#         certificate = "wildcard-azurewebsites-net.cer"
#     }
# ] 

# certificates_load_type = "Keyvault"

# ssl_certificates_keyvault = [
#   {
#     name                               = "wildcard-azurewebsites-net"
#     key_vault_secret_or_certificate_id = "https://sgtd2weuakvitdmodcomm002.vault.azure.net/secrets/wildcard-azurewebsites-net/"
#   }
# ] 

http_listeners = [
  {
    name                 = "app-test-80-hl"
    host_name            = ["app.test.azurewebsites.com"]
    require_sni          = false
    ssl_certificate_name = ""
    protocol             = "Http"
    frontend_port_number = "80"
  }
]

probes = [
  {
    host                  = ""
    interval              = 30
    name                  = "app-test-80-probe"
    protocol              = "Http"
    path                  = "/"
    timeout               = 60
    unhealthy_threshold   = 3
    match_status_code     = ["200-499"]
    match_body            = ""
    pick_hostname_backend = true
  }
]

enable_redirect_configuration = false
redirect_configuration_name   = "redirect_conf_1"
redirect_type                 = "Permanent"
target_listener_name          = "test" # Unique.

request_routing_rules = [
  {
    name                        = "app-test-80-rl"
    rule_type                   = "Basic"
    http_listener_name          = "app-test-80-hl"    # Has to be different from target_listener_name variable
    backend_address_pool_name   = "app-test-bapool"   #Must be empty "" if redirect_configuration_name is set
    backend_http_settings_name  = "app-test-80-bhset" #Must be empty "" if redirect_configuration_name is set
    url_path_map_name           = ""
    redirect_configuration_name = ""
    rewrite_rule_set_name       = ""
    priority                    = "100"
  }
]

rewrite_rule_sets = [
  {
    name = "Add_Missing_CORS_When_502_Error"
    rewrite_rules = [
      {
        name          = "Add_Missing_CORS_When_502_Error"
        rule_sequence = "100"
        conditions = [
          {
            variable    = "var_http_status"
            pattern     = "502"
            ignore_case = false
            negate      = false
          }
        ]
        request_header_configurations = [
        ]
        response_header_configurations = [
          {
            header_name  = "Access-Control-Allow-Origin"
            header_value = "*"
          }
        ]
        urls = [
        ]
      }
    ]
  }
]

#WAF
waf_enabled                  = false # Enable only if sku_name and sku_tier is WAF_v2
waf_rule_version             = "3.0"
waf_file_upload_limit_mb     = "300"
waf_max_request_body_size_kb = "128"

//VMET
vnt_rsg_name = "sgtd2weursgitdmodcomm001"
vnt_name      = "vnetprereq"
snt_name      = "wafv2"
# vnt_rsg_name = "sgtd2weursgplatfoglob001"
# vnt_name     = "sgtd2weuvntplatfoglob001"
# snt_name     = "sgtd2weuvntplatfoglob001-snt54"

//KEY VAULT
akv_rsg_name = "sgtd2weursgitdmodcomm001"
akv_name = "sgtd2weuakvitdmodcomm002"

//MANAGED IDENTITY
uai_name = "sgtd2weuagwitdmodcomm556"


// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuagwitdmodcomm556-dgm-01"
analytics_diagnostic_monitor_enabled = true

//TAGGING
product                              = "Product Test"
cost_center                          = "CC-ITDMOD"
shared_costs                         = "Yes"
apm_functional                       = "APM Test"
cia                                  = "CLL"
# Custom tags
custom_tags                          = { "1" = "1", "2" = "2" }