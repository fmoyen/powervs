##############################################################################
# Power VS Volume Aixtgtvols 1
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_aixtgtvols1" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-aixtgtvols1"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_aixtgtvols1_to_aixtarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_aixtgtvols1.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
}

##############################################################################

##############################################################################
# Power VS Volume Aixtgtvols 2
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_aixtgtvols2" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-aixtgtvols2"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_aixtgtvols2_to_aixtarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_aixtgtvols2.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_aixtgtvols1_to_aixtarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Aixtgtvols 3
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_aixtgtvols3" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-aixtgtvols3"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_aixtgtvols3_to_aixtarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_aixtgtvols3.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_aixtgtvols2_to_aixtarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Aixtgtvols 4
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_aixtgtvols4" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-aixtgtvols4"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_aixtgtvols4_to_aixtarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_aixtgtvols4.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_aixtgtvols3_to_aixtarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Aixtgtvols 5
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_aixtgtvols5" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-aixtgtvols5"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_aixtgtvols5_to_aixtarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_aixtgtvols5.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_aixtarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_aixtgtvols4_to_aixtarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Ibmitgtvols 1
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_ibmitgtvols1" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-ibmitgtvols1"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_ibmitgtvols1_to_ibmitarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_ibmitgtvols1.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_aixtgtvols5_to_aixtarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Ibmitgtvols 2
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_ibmitgtvols2" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-ibmitgtvols2"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_ibmitgtvols2_to_ibmitarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_ibmitgtvols2.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_ibmitgtvols1_to_ibmitarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Ibmitgtvols 3
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_ibmitgtvols3" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-ibmitgtvols3"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_ibmitgtvols3_to_ibmitarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_ibmitgtvols3.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_ibmitgtvols2_to_ibmitarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Ibmitgtvols 4
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_ibmitgtvols4" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-ibmitgtvols4"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_ibmitgtvols4_to_ibmitarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_ibmitgtvols4.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_ibmitgtvols3_to_ibmitarget_instance
  ]
}

##############################################################################

##############################################################################
# Power VS Volume Ibmitgtvols 5
##############################################################################

resource "ibm_pi_volume" "fabdal10_volume_ibmitgtvols5" {
  provider               = ibm.power_vs_dal10
  pi_cloud_instance_id   = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_size         = 100
  pi_volume_name         = "${var.prefix}-fabdal10-ibmitgtvols5"
  pi_volume_shareable    = false
  pi_replication_enabled = false
  pi_volume_type         = "tier0"
  pi_affinity_policy     = "affinity"
  pi_affinity_instance   = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
}

resource "ibm_pi_volume_attach" "fabdal10_attach_ibmitgtvols5_to_ibmitarget_instance" {
  provider             = ibm.power_vs_dal10
  pi_cloud_instance_id = ibm_resource_instance.power_vs_workspace_fabdal10.guid
  pi_volume_id         = ibm_pi_volume.fabdal10_volume_ibmitgtvols5.volume_id
  pi_instance_id       = ibm_pi_instance.fabdal10_workspace_instance_ibmitarget.instance_id
  lifecycle {
    ignore_changes = [
      pi_cloud_instance_id,
      pi_volume_id
    ]
  }
  depends_on = [
    ibm_pi_volume_attach.fabdal10_attach_ibmitgtvols4_to_ibmitarget_instance
  ]
}

##############################################################################
