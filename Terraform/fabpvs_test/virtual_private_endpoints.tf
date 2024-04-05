##############################################################################
# Transit VPE Resources
##############################################################################

resource "ibm_is_subnet_reserved_ip" "transit_vpc_vpe_zone_1_subnet_vpe_ip" {
  subnet = module.transit_vpc.vpe_zone_1_id
}

resource "ibm_is_virtual_endpoint_gateway" "transit_vpc_cos_vpe_gateway" {
  name           = "${var.prefix}-transit-cos-vpe-gw"
  vpc            = module.transit_vpc.id
  resource_group = ibm_resource_group.transit_rg.id
  tags = [
    "fab"
  ]
  security_groups = [
    module.transit_vpc.transit_vpe_id
  ]
  target {
    crn           = "crn:v1:bluemix:public:cloud-object-storage:global:::endpoint:s3.direct.${var.region}.cloud-object-storage.appdomain.cloud"
    resource_type = "provider_cloud_service"
  }
}

resource "ibm_is_virtual_endpoint_gateway_ip" "transit_vpc_cos_gw_vpe_zone_1_gateway_ip" {
  gateway     = ibm_is_virtual_endpoint_gateway.transit_vpc_cos_vpe_gateway.id
  reserved_ip = ibm_is_subnet_reserved_ip.transit_vpc_vpe_zone_1_subnet_vpe_ip.reserved_ip
}

##############################################################################
