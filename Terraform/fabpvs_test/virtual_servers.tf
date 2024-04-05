##############################################################################
# Image Data Sources
##############################################################################

data "ibm_is_image" "ibm_redhat_9_2_minimal_amd64_3" {
  name = "ibm-redhat-9-2-minimal-amd64-3"
}

##############################################################################

##############################################################################
# Transit VPC Example Deployment Deployment
##############################################################################

resource "ibm_is_instance" "transit_vpc_example_deployment_vsi_1_1" {
  name           = "${var.prefix}-transit-example-deployment-vsi-zone-1-1"
  image          = data.ibm_is_image.ibm_redhat_9_2_minimal_amd64_3.id
  profile        = "bx2-4x16"
  resource_group = ibm_resource_group.transit_rg.id
  vpc            = module.transit_vpc.id
  zone           = "${var.region}-1"
  tags = [
    "fab"
  ]
  primary_network_interface {
    subnet = module.transit_vpc.vsi_zone_1_id
    security_groups = [
      module.transit_vpc.transit_vsi_id
    ]
  }
  boot_volume {
    encryption = ibm_kms_key.kms_key_key.crn
  }
  keys = [
    ibm_is_ssh_key.vsi_ssh_key.id
  ]
  volumes = [
  ]
}

resource "ibm_is_instance" "transit_vpc_example_deployment_vsi_1_2" {
  name           = "${var.prefix}-transit-example-deployment-vsi-zone-1-2"
  image          = data.ibm_is_image.ibm_redhat_9_2_minimal_amd64_3.id
  profile        = "bx2-4x16"
  resource_group = ibm_resource_group.transit_rg.id
  vpc            = module.transit_vpc.id
  zone           = "${var.region}-1"
  tags = [
    "fab"
  ]
  primary_network_interface {
    subnet = module.transit_vpc.vsi_zone_1_id
    security_groups = [
      module.transit_vpc.transit_vsi_id
    ]
  }
  boot_volume {
    encryption = ibm_kms_key.kms_key_key.crn
  }
  keys = [
    ibm_is_ssh_key.vsi_ssh_key.id
  ]
  volumes = [
  ]
}

##############################################################################
