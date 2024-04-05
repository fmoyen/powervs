##############################################################################
# Transit VPC Outputs
##############################################################################

output "name" {
  value = ibm_is_vpc.transit_vpc.name
}

output "id" {
  value = ibm_is_vpc.transit_vpc.id
}

output "crn" {
  value = ibm_is_vpc.transit_vpc.crn
}

output "vsi_zone_1_name" {
  value = ibm_is_subnet.transit_vsi_zone_1.name
}

output "vsi_zone_1_id" {
  value = ibm_is_subnet.transit_vsi_zone_1.id
}

output "vsi_zone_1_crn" {
  value = ibm_is_subnet.transit_vsi_zone_1.crn
}

output "vpe_zone_1_name" {
  value = ibm_is_subnet.transit_vpe_zone_1.name
}

output "vpe_zone_1_id" {
  value = ibm_is_subnet.transit_vpe_zone_1.id
}

output "vpe_zone_1_crn" {
  value = ibm_is_subnet.transit_vpe_zone_1.crn
}

output "vpn_zone_1_name" {
  value = ibm_is_subnet.transit_vpn_zone_1.name
}

output "vpn_zone_1_id" {
  value = ibm_is_subnet.transit_vpn_zone_1.id
}

output "vpn_zone_1_crn" {
  value = ibm_is_subnet.transit_vpn_zone_1.crn
}

output "transit_vpe_name" {
  value = ibm_is_security_group.transit_vpc_transit_vpe_sg.name
}

output "transit_vpe_id" {
  value = ibm_is_security_group.transit_vpc_transit_vpe_sg.id
}

output "transit_vsi_name" {
  value = ibm_is_security_group.transit_vpc_transit_vsi_sg.name
}

output "transit_vsi_id" {
  value = ibm_is_security_group.transit_vpc_transit_vsi_sg.id
}

##############################################################################
