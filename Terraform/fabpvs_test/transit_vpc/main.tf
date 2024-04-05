##############################################################################
# Transit VPC
##############################################################################

resource "ibm_is_vpc" "transit_vpc" {
  name                        = "${var.prefix}-transit-vpc"
  resource_group              = var.transit_rg_id
  tags                        = var.tags
  no_sg_acl_rules             = true
  address_prefix_management   = "manual"
  default_network_acl_name    = null
  default_security_group_name = null
  default_routing_table_name  = null
}

resource "ibm_is_vpc_address_prefix" "transit_transit_zone_1_prefix" {
  name = "${var.prefix}-transit-transit-zone-1"
  vpc  = ibm_is_vpc.transit_vpc.id
  zone = "${var.region}-1"
  cidr = "10.10.0.0/22"
}

resource "ibm_is_public_gateway" "transit_gateway_zone_1" {
  name           = "${var.prefix}-transit-gateway-zone-1"
  vpc            = ibm_is_vpc.transit_vpc.id
  resource_group = var.transit_rg_id
  zone           = "${var.region}-1"
  tags           = var.tags
}

resource "ibm_is_subnet" "transit_vsi_zone_1" {
  vpc             = ibm_is_vpc.transit_vpc.id
  name            = "${var.prefix}-transit-vsi-zone-1"
  zone            = "${var.region}-1"
  resource_group  = var.transit_rg_id
  tags            = var.tags
  network_acl     = ibm_is_network_acl.transit_transit_acl.id
  ipv4_cidr_block = "10.10.0.0/26"
  public_gateway  = ibm_is_public_gateway.transit_gateway_zone_1.id
  depends_on = [
    ibm_is_vpc_address_prefix.transit_transit_zone_1_prefix
  ]
}

resource "ibm_is_subnet" "transit_vpe_zone_1" {
  vpc             = ibm_is_vpc.transit_vpc.id
  name            = "${var.prefix}-transit-vpe-zone-1"
  zone            = "${var.region}-1"
  resource_group  = var.transit_rg_id
  tags            = var.tags
  network_acl     = ibm_is_network_acl.transit_transit_acl.id
  ipv4_cidr_block = "10.10.0.128/29"
  depends_on = [
    ibm_is_vpc_address_prefix.transit_transit_zone_1_prefix
  ]
}

resource "ibm_is_subnet" "transit_vpn_zone_1" {
  vpc             = ibm_is_vpc.transit_vpc.id
  name            = "${var.prefix}-transit-vpn-zone-1"
  zone            = "${var.region}-1"
  resource_group  = var.transit_rg_id
  tags            = var.tags
  network_acl     = ibm_is_network_acl.transit_transit_acl.id
  ipv4_cidr_block = "10.10.0.144/28"
  depends_on = [
    ibm_is_vpc_address_prefix.transit_transit_zone_1_prefix
  ]
}

##############################################################################
