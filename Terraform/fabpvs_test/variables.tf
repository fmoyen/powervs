##############################################################################
# Variables
##############################################################################

variable "ibmcloud_api_key" {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "IBM Cloud Region where resources will be provisioned"
  type        = string
  default     = "us-south"
}

variable "prefix" {
  description = "Name prefix that will be prepended to named resources"
  type        = string
  default     = "fab"
}

variable "vsi_ssh_key_public_key" {
  description = "Public SSH Key Value for Vsi SSH Key"
  type        = string
  sensitive   = true
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzgsc/RyWPRIuKKiSaNhwa94jHYCofIgF5X1cwbDXrZMaczkfw6LYfB5qb/QjtboSWifTa1adttI1UB+B4Q1/jNnuGdV0/pJu/6DY66KtzCaF9FTIcyvhbU9eBXgEsUSrl+FZiLdndzbDeTpUV0Jpgv2104PG3LKWTcSnqjbr7yNbpGc1E6GxlnvQqhh25/CNj8iZzxM6T6Q1f0OzacMi0BRaoCXUmlj8o0MJ1AXO4VGPPXJSFEQlyTt3QdHb4FVIUR7A6Hg2NyRJ0fLE+JqsHLJGtxbpITn20eitf/G8jZVFvl8/NN6PlQAtlZN3jBPTd2k0Rd+IP3RwUry+nTuhkhSUx8SYBn4z2lbps/90zIahXxXHvmrc9p0rpOmWIXyQnSELhctkylNrNzXpLKX1//81FMnGlstG/d09OdGdQAEcMOU0DM0biLpcekGxn//wVNFwNQz+ZeqctFusozp1JeDUCs+yI2gXA5mzDuLgMsKUI6ISDrve4g8iN8Ayrdps= fabrice@IBM-PF3LLCQM"
}

variable "dal10gw_on_prem_connection_preshared_key" {
  description = "Preshared key for VPN Gateway dal10gw connection on-prem-connection"
  type        = string
  sensitive   = true
}

variable "power_fabdal10_powervs_ssh_key_key" {
  description = "Fabdal 10 powervs ssh key public key value"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzgsc/RyWPRIuKKiSaNhwa94jHYCofIgF5X1cwbDXrZMaczkfw6LYfB5qb/QjtboSWifTa1adttI1UB+B4Q1/jNnuGdV0/pJu/6DY66KtzCaF9FTIcyvhbU9eBXgEsUSrl+FZiLdndzbDeTpUV0Jpgv2104PG3LKWTcSnqjbr7yNbpGc1E6GxlnvQqhh25/CNj8iZzxM6T6Q1f0OzacMi0BRaoCXUmlj8o0MJ1AXO4VGPPXJSFEQlyTt3QdHb4FVIUR7A6Hg2NyRJ0fLE+JqsHLJGtxbpITn20eitf/G8jZVFvl8/NN6PlQAtlZN3jBPTd2k0Rd+IP3RwUry+nTuhkhSUx8SYBn4z2lbps/90zIahXxXHvmrc9p0rpOmWIXyQnSELhctkylNrNzXpLKX1//81FMnGlstG/d09OdGdQAEcMOU0DM0biLpcekGxn//wVNFwNQz+ZeqctFusozp1JeDUCs+yI2gXA5mzDuLgMsKUI6ISDrve4g8iN8Ayrdps= fabrice@IBM-PF3LLCQM"
}

##############################################################################
