##############################################################################
# Aixtarget Power Instance
##############################################################################

resource "ibm_pi_instance" "fabdal10_workspace_instance_aixtarget" {
  provider                 = ibm.power_vs_dal10
  pi_image_id              = ibm_pi_image.power_image_fabdal10_7300_01_01.image_id
  pi_key_pair_name         = ibm_pi_key.power_vs_ssh_key_powervs_ssh_key.pi_key_name
  pi_cloud_instance_id     = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_instance_name         = "${var.prefix}-aixtarget"
  pi_health_status         = "OK"
  pi_proc_type             = "shared"
  pi_storage_type          = "tier5k"
  pi_storage_pool_affinity = false
  pi_sys_type              = "s922"
  pi_memory                = "128"
  pi_processors            = "4"
  pi_pin_policy            = "none"
  pi_network {
    network_id = ibm_pi_network.power_network_fabdal10_pvm.network_id
  }
  timeouts {
    create = "3h"
  }
}

##############################################################################

##############################################################################
# Ibmitarget Power Instance
##############################################################################

resource "ibm_pi_instance" "fabdal10_workspace_instance_ibmitarget" {
  provider                 = ibm.power_vs_dal10
  pi_image_id              = ibm_pi_image.power_image_fabdal10_ibmi_75_01_2924_2.image_id
  pi_key_pair_name         = ibm_pi_key.power_vs_ssh_key_powervs_ssh_key.pi_key_name
  pi_cloud_instance_id     = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_instance_name         = "${var.prefix}-ibmitarget"
  pi_sys_type              = "s922"
  pi_proc_type             = "shared"
  pi_processors            = "1"
  pi_memory                = "128"
  pi_storage_pool_affinity = false
  pi_storage_type          = "tier5k"
  pi_pin_policy            = "none"
  pi_health_status         = "OK"
  pi_network {
    network_id = ibm_pi_network.power_network_fabdal10_pvm.network_id
  }
  timeouts {
    create = "3h"
  }
}

##############################################################################
