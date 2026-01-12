// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"

// PRODUCT
afa_name              = "sgtd2weuafaitdmodcomm1510W"
sta_name              = "sgtd2weustaitdmodcomm001"
sta_rsg_name          = "sgtd2weursgitdmodcomm001"
afa_os_type           = "Windows" #"Linux"
afa_extension_version = "~4"

// DATA SERVICE PLAN
asp_name     = "sgtd2weuaspitdmodcomm1510W"
asp_rsg_name = "sgtd2weursgitdmodcomm001"
exists_asp   = false
asp_os_type  = "Windows" #"Linux"

// DATA VNET INTEGRATION 
enabled_vnt_integration         = false #true
afa_vntintegration_sbn          = "sgtd2weuvntplatfoglob001-snt53"
afa_vntintegration_vnt          = "sgtd2weuvntplatfoglob001"
afa_vntintegration_vnt_rsg_name = "sgtd2weursgplatfoglob001"

//PUBLIC NETWORK
enable_public_network_access = true

// CONTENT SHARE
sta_share         = false #true
contentshare_name = "afa-bgt01300124"

quota_content_share    = 1
website_contentovervnt = "1"

afa_worker_process_count     = "5"
linux_docker_conf            = false
linux_current_stack          = "pwsh"
windows_current_stack        = "pwsh"
homepage_disable             = true
appinsights_key              = "cb2bc962-4903-4d5b-b381-dce222627b60"
appinsights_connectionstring = "InstrumentationKey=cb2bc962-4903-4d5b-b381-dce222627b60;IngestionEndpoint=https://westeurope-3.in.applicationinsights.azure.com/;LiveEndpoint=https://westeurope.livediagnostics.monitor.azure.com/"
custom_app_settings          = { "WEBSITE_DNS_SERVER" = "168.63.129.16", "APP_ID_NAME" = "spnid", "APP_SECRET_NAME" = "spnsecret", "KEY_VAULT_NAME" = "sgtd2weuakvitdmodcomm002", "TENANT_NAME" = "subTenant", "WORKSPACE_ID_NAME" = "workspaceid", "WORKSPACE_KEY_NAME" = "workspacekey", "SOURCEURL" = "sourceurl" }

always_on = true
cors = {
  allowed_origins     = ["https://www.contoso.com", "http://www.example.com"]
  support_credentials = true
}

health_check_path = "/"
ip_restriction = [
  {
    ip_address                = "10.4.34.30/32"
    virtual_network_subnet_id = null
    service_tag               = null
    name                      = "IP_restriction_bgt"
    priority                  = "5000"
    action                    = "Allow"
    headers = [{
      x_azure_fdid      = []
      x_fd_health_probe = ["1"]
      x_forwarded_for   = [] #["10.4.0.20/32","10.4.34.25/32"]
      x_forwarded_host  = [] #["www.google.es","www.pruebas.com"]
    }]
  }
]

enabled                       = true
default_provider              = "AzureActiveDirectory"
additional_login_parameters   = {}
unauthenticated_client_action = "RedirectToLoginPage"

certificate_name = "mycertificatename"
certificate_path = "./bgt-api-cert_e25fb20c8ea943e49f37fe95ab266948.cer"

// MONITOR DIAGNOSTICS SETTINGS
lwk_name                                 = "sgtd2weulwkitdmodcomm001"
lwk_rsg_name                             = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_name        = "sgtd2weuafaitdmodcomm1510W"
analytics_diagnostic_monitor_enabled     = true
analytics_diagnostic_monitor_asp_name    = "sgtd2weuaspitdmodcomm1510W"
analytics_diagnostic_monitor_asp_enabled = true
lwk_asp_rsg_name                         = "sgtd2weursgitdmodcomm001"
lwk_asp_name                             = "sgtd2weulwkitdmodcomm001"

// TAGGING
product        = "Product Test"
cost_center    = "CC-ITDMOD"
shared_costs   = "Yes"
apm_functional = "APM Test"
cia            = "CLL"
# Custom tags
custom_tags = { "1" = "1", "2" = "2" }
