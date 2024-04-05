##############################################################################
# Security Group Transit VSI
##############################################################################

resource "ibm_is_security_group" "transit_vpc_transit_vsi_sg" {
  name           = "${var.prefix}-transit-transit-vsi-sg"
  vpc            = ibm_is_vpc.transit_vpc.id
  resource_group = var.transit_rg_id
  tags = [
    "fab"
  ]
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vsi_sg_rule_general_inbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vsi_sg.id
  remote    = "10.0.0.0/8"
  direction = "inbound"
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vsi_sg_rule_ibm_inbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vsi_sg.id
  remote    = "161.26.0.0/16"
  direction = "inbound"
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vsi_sg_rule_powervs_inbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vsi_sg.id
  remote    = "192.168.0.0/24"
  direction = "inbound"
}

resource "ibm_is_security_group_rule" "transit_vpc_transit_vsi_sg_rule_all_outbound" {
  group     = ibm_is_security_group.transit_vpc_transit_vsi_sg.id
  remote    = "0.0.0.0/0"
  direction = "outbound"
}

##############################################################################
