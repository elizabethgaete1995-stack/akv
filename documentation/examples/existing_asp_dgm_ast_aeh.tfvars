// COMMON VARIABLES
rsg_name = "sgtd2weursgitdmodcomm001"

// PRODUCT
afa_name              = "sgtd2weuafaitdmodcomm001-cvn560323"
sta_name              = "sgtd2weustaitdmodcomm001"
sta_rsg_name          = "sgtd2weursgitdmodcomm001"
afa_os_type           = "Linux" #"Windows"
afa_extension_version = "~4"

// DATA SERVICE PLAN
asp_name     = "sgtd2weuaspitdmodcomm01-nix"
asp_rsg_name = "sgtd2weursgitdmodcomm001"
exists_asp   = true

// DATA VNET INTEGRATION 
enabled_vnt_integration         = false #true
afa_vntintegration_sbn          = "sgtd2weuvntplatfoglob001-snt53"
afa_vntintegration_vnt          = "sgtd2weuvntplatfoglob001"
afa_vntintegration_vnt_rsg_name = "sgtd2weursgplatfoglob001"

//PUBLIC NETWORK
#enable_public_network_access   = false


// CONTENT SHARE
sta_share              = false #true
contentshare_name      = "afa-cvn560323"
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
    name                      = "IP_restriction_cvn"
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

// MONITOR DIAGNOSTICS SETTINGS
analytics_diagnostic_monitor_lwk_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.OperationalInsights/workspaces/sgtd2weulwkitdmodcomm001"
analytics_diagnostic_monitor_name    = "sgtd2weuafaitdmodcomm001-bgt01300124"
analytics_diagnostic_monitor_enabled = true
analytics_diagnostic_monitor_sta_id  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_name = "sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_rsg = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_rsg       = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_namespace = "sgtd2weuaehitdmodcomm001"
analytics_diagnostic_monitor_aeh_name      = "sgtd2weuaehitdmodcomm001-testaeh"
#eventhub_authorization_rule_id = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
#analytics_diagnostic_monitor_aeh_name = "eventhub-nms"
analytics_diagnostic_monitor_asp_name    = "sgtd2weuaspitdmodcomm001-bgt01300124"
analytics_diagnostic_monitor_asp_enabled = true
analytics_diagnostic_monitor_sta_id_asp  = "/subscriptions/ebac6c00-3c2f-4d56-82c0-8057225d44fa/resourceGroups/sgtd2weursgitdmodcomm001/providers/Microsoft.Storage/storageAccounts/sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_name_asp = "sgtd2weustaitdmodcomm001"
#analytics_diagnostic_monitor_sta_rsg_asp = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_rsg_asp       = "sgtd2weursgitdmodcomm001"
analytics_diagnostic_monitor_aeh_namespace_asp = "sgtd2weuaehitdmodcomm001"
analytics_diagnostic_monitor_aeh_name_asp      = "sgtd2weuaehitdmodcomm001-testaeh"
#eventhub_authorization_rule_id_asp = "/subscriptions/2ce5e181-3cbf-417b-9dca-319bff83fbf5/resourceGroups/gscs1weursgsdhlchcomm001/providers/Microsoft.EventHub/namespaces/AEHTest/authorizationRules/RootManageSharedAccessKey"
#analytics_diagnostic_monitor_aeh_name_asp = "eventhub-nms"
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

