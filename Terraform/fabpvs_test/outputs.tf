##############################################################################
# Transit VPC Outputs
##############################################################################

output "transit_vpc_name" {
  value = module.transit_vpc.name
}

output "transit_vpc_id" {
  value = module.transit_vpc.id
}

output "transit_vpc_crn" {
  value = module.transit_vpc.crn
}

output "transit_vpc_subnet_vsi_zone_1_name" {
  value = module.transit_vpc.vsi_zone_1_name
}

output "transit_vpc_subnet_vsi_zone_1_id" {
  value = module.transit_vpc.vsi_zone_1_id
}

output "transit_vpc_subnet_vsi_zone_1_crn" {
  value = module.transit_vpc.vsi_zone_1_crn
}

output "transit_vpc_subnet_vpe_zone_1_name" {
  value = module.transit_vpc.vpe_zone_1_name
}

output "transit_vpc_subnet_vpe_zone_1_id" {
  value = module.transit_vpc.vpe_zone_1_id
}

output "transit_vpc_subnet_vpe_zone_1_crn" {
  value = module.transit_vpc.vpe_zone_1_crn
}

output "transit_vpc_subnet_vpn_zone_1_name" {
  value = module.transit_vpc.vpn_zone_1_name
}

output "transit_vpc_subnet_vpn_zone_1_id" {
  value = module.transit_vpc.vpn_zone_1_id
}

output "transit_vpc_subnet_vpn_zone_1_crn" {
  value = module.transit_vpc.vpn_zone_1_crn
}

output "transit_vpc_security_group_transit_vpe_name" {
  value = module.transit_vpc.transit_vpe_name
}

output "transit_vpc_security_group_transit_vpe_id" {
  value = module.transit_vpc.transit_vpe_id
}

output "transit_vpc_security_group_transit_vsi_name" {
  value = module.transit_vpc.transit_vsi_name
}

output "transit_vpc_security_group_transit_vsi_id" {
  value = module.transit_vpc.transit_vsi_id
}

##############################################################################

##############################################################################
# Transit Vpc Example Deployment Deployment Outputs
##############################################################################

output "transit_vpc_example_deployment_vsi_1_1_primary_ip_address" {
  value = ibm_is_instance.transit_vpc_example_deployment_vsi_1_1.primary_network_interface[0].primary_ip[0].address
}

output "transit_vpc_example_deployment_vsi_1_2_primary_ip_address" {
  value = ibm_is_instance.transit_vpc_example_deployment_vsi_1_2.primary_network_interface[0].primary_ip[0].address
}

##############################################################################

##############################################################################
# Fabdal 10 Power Workspace Outputs
##############################################################################

output "power_vs_workspace_fabdal10_name" {
  value = ibm_resource_instance.power_vs_workspace_fabdal10.name
}

output "power_vs_workspace_fabdal10_guid" {
  value = ibm_resource_instance.power_vs_workspace_fabdal10.guid
}

output "power_vs_workspace_fabdal10_crn" {
  value = ibm_resource_instance.power_vs_workspace_fabdal10.crn
}

output "power_vs_workspace_fabdal10_location" {
  value = ibm_resource_instance.power_vs_workspace_fabdal10.location
}

output "power_vs_workspace_fabdal10_ssh_key_powervs_ssh_key" {
  value = ibm_pi_key.power_vs_ssh_key_powervs_ssh_key.name
}

output "power_vs_workspace_fabdal10_network_pvm_name" {
  value = ibm_pi_network.power_network_fabdal10_pvm.pi_network_name
}

output "power_vs_workspace_fabdal10_network_pvm_id" {
  value = ibm_pi_network.power_network_fabdal10_pvm.id
}

##############################################################################

##############################################################################
# Power VS Instance Outputs
##############################################################################

output "fabdal10_workspace_instance_aixtarget_primary_ip" {
  value = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.pi_network[0].ip_address
}

output "fabdal10_workspace_instance_ibmitarget_primary_ip" {
  value = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.pi_network[0].ip_address
}

##############################################################################

##############################################################################
# Savefiles Object Storage Outputs
##############################################################################

output "savefiles_object_storage_bucket_aix_bucket_name" {
  value = ibm_cos_bucket.savefiles_object_storage_aix_bucket.bucket_name
}

output "savefiles_object_storage_bucket_aix_region_location" {
  value = ibm_cos_bucket.savefiles_object_storage_aix_bucket.region_location
}

output "savefiles_object_storage_bucket_ibm_i_bucket_name" {
  value = ibm_cos_bucket.savefiles_object_storage_ibm_i_bucket.bucket_name
}

output "savefiles_object_storage_bucket_ibm_i_region_location" {
  value = ibm_cos_bucket.savefiles_object_storage_ibm_i_bucket.region_location
}

##############################################################################

##############################################################################
# A Tracker Object Storage Outputs
##############################################################################

output "a_tracker_object_storage_bucket_a_tracker_bucket_name" {
  value = ibm_cos_bucket.a_tracker_object_storage_a_tracker_bucket.bucket_name
}

output "a_tracker_object_storage_bucket_a_tracker_region_location" {
  value = ibm_cos_bucket.a_tracker_object_storage_a_tracker_bucket.region_location
}

##############################################################################
