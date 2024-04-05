##############################################################################
# Transit Gateway Transit Gateway
##############################################################################

resource "ibm_tg_gateway" "transit_gateway" {
  name           = "${var.prefix}-transit-gateway"
  location       = var.region
  global         = false
  resource_group = ibm_resource_group.service_rg.id
  timeouts {
    create = "30m"
    delete = "30m"
  }
}

resource "ibm_tg_connection" "transit_gateway_to_transit_connection" {
  gateway      = ibm_tg_gateway.transit_gateway.id
  network_type = "vpc"
  name         = "${var.prefix}-transit-gateway-transit-hub-connection"
  network_id   = module.transit_vpc.crn
  timeouts {
    create = "30m"
    delete = "30m"
  }
}

resource "ibm_tg_connection" "transit_gateway_to_power_workspace_fabdal10_connection" {
  gateway      = ibm_tg_gateway.transit_gateway.id
  network_type = "power_virtual_server"
  name         = "${var.prefix}-transit-gateway-power-fabdal10-hub-connection"
  network_id   = ibm_resource_instance.power_vs_workspace_fabdal10.resource_crn
  timeouts {
    create = "30m"
    delete = "30m"
  }
}

##############################################################################
