//COMMOM
rsg_name = "sgtd2weursgitdmodcomm001"
location = "westeurope"

//PRODUCT
agw_name      = "sgtd2weuagwitdmodcomm1501"
sku_name      = "Standard_v2"
sku_tier      = "Standard_v2"
capacity      = { min = 2, max = 10 }
cipher_suites = ["TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"]

private_ip = "10.4.27.15"

public_ip       = "sgtd2weuagwitdmodcommq501-publicip"
public_ip_zones = [] #["1", "2", "3"]

# Backend Address Pool NIC Asssociation
create_backend_nic = false
private_ip_address_allocation        = "Static"

backend_address_pools = [
  {

    name  = "app-test-cert443"
    fqdns = ["sgtd2weuappitdmodcomm555.azurewebsites.net"]

    ip    = []
  }
]
frontend_port = ["443"]
backend_http_settings = [
  {
    cookie_based_affinity           = "Disabled"
    name                            = "app-test-cert443"
    path                            = ""
    port                            = 443
    protocol                        = "Https"
    request_timeout                 = 600
    host_name                       = "app-test.azurewebsites.com"
    probe_name                      = "app-test-cert443"
    connection_draining_enabled     = false
    connection_draining_timeout_sec = 3600
    pick_hostname                   = true
    auth_certs                      = ["SantanderCARoot"] #["trsrootcert"] # Refers to 'trusted_root_certificates' (name) variable 
  }
]

certificates_path = "./certs/"

trusted_root_certificates = [
    {
         name = "SantanderCARoot",
         certificate = "SantanderCARoot.crt"
     }
 ] 

 certificates_load_type = "Keyvault"

 ssl_certificates_keyvault = [
   {
     name                               = "waftestsslcert"
     key_vault_secret_or_certificate_id = "https://sgtd2weuakvitdmodcomm002.vault.azure.net/secrets/waftestsslcert/"
   }
 ] 

http_listeners = [
  {
    name                 = "app-test-cert443"
    host_name            = ["app.test.azurewebsites.com"]
    require_sni          = false
    ssl_certificate_name = "waftestsslcert"
    protocol             = "Https"
    frontend_port_number = "443"
  }
]

probes = [
  {
    host                  = ""
    interval              = 30
    name                  = "app-test-cert443"
    protocol              = "Https"
    path                  = "/"
    timeout               = 60
    unhealthy_threshold   = 3
    match_status_code     = ["200-499"]
    match_body = ""
    pick_hostname_backend = true
  }
]

enable_redirect_configuration = false
redirect_configuration_name   = "redirect_conf_1"
redirect_type                 = "Permanent"
target_listener_name          = "test" # Unique.

request_routing_rules = [
  {
    name                        = "app-test-cert443"
    rule_type                   = "Basic"
    http_listener_name          = "app-test-cert443"    # Has to be different from target_listener_name variable
    backend_address_pool_name   = "app-test-cert443"   #Must be empty "" if redirect_configuration_name is set
    backend_http_settings_name  = "app-test-cert443" #Must be empty "" if redirect_configuration_name is set
    url_path_map_name           = ""
    redirect_configuration_name = ""
    rewrite_rule_set_name       = ""
    priority                    = "100"
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
uai_name = "sgtd2weuagwitdmodcomm1501"

// MONITOR DIAGNOSTICS SETTINGS
lwk_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_name                             = "sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuagwitdmodcomm1501-dgm"
analytics_diagnostic_monitor_enabled = true

//TAGGING
product                              = "Product Test"
cost_center                          = "CC-ITDMOD"
shared_costs                         = "Yes"
apm_functional                       = "APM Test"
cia                                  = "CLL"
# Custom tags
custom_tags                          = { "1" = "1", "2" = "2" }