variable "reform_service_name" {
    default = "case-progression"
}

variable "reform_team" {
    default = "div"
}

variable "env" {
    type = "string"
}

variable "product" {
    type    = "string"
}

variable "tenant_id" {}

variable "client_id" {
    description = "(Required) The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. This is usually sourced from environment variables and not normally required to be specified."
}

variable "jenkins_AAD_objectId" {
    type        = "string"
    description = "(Required) The Azure AD object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies."
}

variable "idam_s2s_url_prefix" {
    default = "rpe-service-auth-provider"
}

variable "auth_provider_service_client_microservice" {
    default = "divorce_ccd_submission"
}

variable "auth_provider_service_client_key" {
    default = "{{ evidence_management_client_api.secret }}"
}

variable "auth_provider_service_client_tokentimetoliveinseconds" {
    default = "900"
}

variable "ccd_jurisdictionid" {
    default = "DIVORCE"
}

variable "ccd_casetypeid" {
    default = "DIVORCE"
}

variable "ccd_eventid_create" {
    default = "create"
}

variable "logging_level_org_springframework_web" {
    type = "string"
}

variable "logging_level_uk_gov_hmcts_ccd" {
    type = "string"
}

variable "draft_store_api_baseurl" {
    type = "string"
}

variable "uk_gov_notify_email_templates" {
    type = "string"
}

variable "uk_gov_notify_email_template_vars" {
    type = "string"
}

variable "subscription" {}

variable "location" {
    type = "string"
    default = "UK South"
}

variable "ilbIp" {}

variable "vault_env" {}
