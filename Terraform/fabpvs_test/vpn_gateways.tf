##############################################################################
# VPN Gateways
##############################################################################

resource "ibm_is_vpn_gateway" "transit_dal10gw_vpn_gw" {
  name           = "${var.prefix}-transit-dal10gw-vpn-gw"
  subnet         = module.transit_vpc.vpn_zone_1_id
  resource_group = ibm_resource_group.transit_rg.id
  mode           = "policy"
  tags = [
    "fab"
  ]
  timeouts {
    delete = "1h"
  }
}

resource "ibm_is_vpn_gateway_connection" "transit_dal10gw_vpn_gw_connection_on_prem_connection" {
  name          = "${var.prefix}-dal10gw-on-prem-connection"
  vpn_gateway   = ibm_is_vpn_gateway.transit_dal10gw_vpn_gw.id
  peer_address  = "10.40.0.66"
  preshared_key = var.dal10gw_on_prem_connection_preshared_key
  local_cidrs = [
    "192.168.0.0/24",
    "10.10.0.0/26",
    "10.10.0.128/29",
    "10.10.0.144/28"
  ]
  peer_cidrs = [
    "10.40.0.0/16"
  ]
}

resource "ibm_is_vpc_address_prefix" "transit_dal10gw_on_prem_10_40_0_0_16_prefix" {
  name = "${var.prefix}-transit-dal10gw-on-prem-10-40-0-0-16"
  vpc  = module.transit_vpc.id
  zone = "${var.region}-1"
  cidr = "10.40.0.0/16"
}

##############################################################################
