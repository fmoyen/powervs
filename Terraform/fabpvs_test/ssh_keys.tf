##############################################################################
# SSH Keys
##############################################################################

resource "ibm_is_ssh_key" "vsi_ssh_key" {
  name           = "${var.prefix}-vsi-ssh-key"
  public_key     = var.vsi_ssh_key_public_key
  resource_group = ibm_resource_group.transit_rg.id
  tags = [
    "fab"
  ]
}

##############################################################################
