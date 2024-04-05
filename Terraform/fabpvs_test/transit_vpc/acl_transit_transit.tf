##############################################################################
# Transit Transit ACL
##############################################################################

resource "ibm_is_network_acl" "transit_transit_acl" {
  name           = "${var.prefix}-transit-transit-acl"
  vpc            = ibm_is_vpc.transit_vpc.id
  resource_group = var.transit_rg_id
  tags = [
    "fab"
  ]
  rules {
    action      = "allow"
    destination = "10.0.0.0/8"
    direction   = "inbound"
    name        = "all-inbound"
    source      = "0.0.0.0/0"
  }
  rules {
    action      = "allow"
    destination = "0.0.0.0/0"
    direction   = "outbound"
    name        = "all-outbound"
    source      = "10.0.0.0/8"
  }
}

##############################################################################
