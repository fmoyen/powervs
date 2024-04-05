##############################################################################
# IBM Cloud Provider
##############################################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
  ibmcloud_timeout = 60
}

provider "ibm" {
  alias            = "power_vs_dal10"
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = "us-south"
  zone             = "dal10"
  ibmcloud_timeout = 60
}

##############################################################################

##############################################################################
# Transit VPC Module
##############################################################################

module "transit_vpc" {
  source        = "./transit_vpc"
  region        = var.region
  prefix        = var.prefix
  transit_rg_id = ibm_resource_group.transit_rg.id
  tags = [
    "fab"
  ]
}

##############################################################################
