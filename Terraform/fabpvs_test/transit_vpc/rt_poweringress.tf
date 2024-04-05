##############################################################################
# Poweringress Routing Table
##############################################################################

resource "ibm_is_vpc_routing_table" "transit_vpc_poweringress_table" {
  name                          = "${var.prefix}-transit-vpc-poweringress-table"
  vpc                           = ibm_is_vpc.transit_vpc.id
  route_direct_link_ingress     = false
  route_transit_gateway_ingress = true
  route_vpc_zone_ingress        = false
  accept_routes_from_resource_type = [
    "vpn_gateway",
    "vpn_server"
  ]
}

##############################################################################
