##############################################################################
# Security Group Transit VPE
##############################################################################

resource "ibm_is_security_group" "transit_vpc_transit_vpe_sg" {
  name           = "${var.prefix}-transit-transit-vpe-sg"
  vpc            = ibm_is_vpc.transit_vpc.id
  resource_group = var.transit_rg_id
  tags = [
    "fab"
  ]
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vpe_sg_rule_general_inbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vpe_sg.id
  remote    = "10.0.0.0/8"
  direction = "inbound"
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vpe_sg_rule_powervs_inbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vpe_sg.id
  remote    = "192.168.0.0/24"
  direction = "inbound"
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vpe_sg_rule_general_outbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vpe_sg.id
  remote    = "10.0.0.0/8"
  direction = "outbound"
}

##############################################################################
