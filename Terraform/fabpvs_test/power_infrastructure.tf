##############################################################################
# Power VS Workspace Fabdal 10
##############################################################################

resource "ibm_resource_instance" "power_vs_workspace_fabdal10" {
  provider          = ibm.power_vs_dal10
  name              = "${var.prefix}-power-workspace-fabdal10"
  service           = "power-iaas"
  plan              = "power-virtual-server-group"
  location          = "dal10"
  resource_group_id = ibm_resource_group.power_rg.id
  tags = [
    "fab"
  ]
  timeouts {
    create = "6m"
    update = "5m"
    delete = "10m"
  }
}

##############################################################################

##############################################################################
# Fabdal 10 Workspace SSH Keys
##############################################################################

resource "ibm_pi_key" "power_vs_ssh_key_powervs_ssh_key" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_key_name          = "${var.prefix}-power-fabdal10-powervs-ssh-key-key"
  pi_ssh_key           = var.power_fabdal10_powervs_ssh_key_key
}

##############################################################################

##############################################################################
# Fabdal 10 Workspace Network
##############################################################################

resource "ibm_pi_network" "power_network_fabdal10_pvm" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_network_name      = "${var.prefix}-power-network-pvm"
  pi_cidr              = "192.168.0.0/24"
  pi_network_type      = "vlan"
  pi_network_mtu       = 9000
  pi_dns = [
    "127.0.0.1"
  ]
}

##############################################################################

##############################################################################
# Fabdal 10 Workspace Images
##############################################################################

resource "ibm_pi_image" "power_image_fabdal10_7300_01_01" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_image_id          = "142d55ca-d24c-4114-a2f9-4174e96ed96e"
  pi_image_name        = "7300-01-01"
  timeouts {
    create = "9m"
  }
}

resource "ibm_pi_image" "power_image_fabdal10_ibmi_75_01_2924_2" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_image_id          = "d22a080f-d1b3-4e80-898e-5e8d46cb86ca"
  pi_image_name        = "IBMi-75-01-2924-2"
  timeouts {
    create = "9m"
  }
  depends_on = [
    ibm_pi_image.power_image_fabdal10_7300_01_01
  ]
}

##############################################################################
