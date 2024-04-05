##############################################################################
# Resource Groups
##############################################################################

resource "ibm_resource_group" "service_rg" {
  name = "${var.prefix}-service-rg"
  tags = [
    "fab"
  ]
}

resource "ibm_resource_group" "transit_rg" {
  name = "${var.prefix}-transit-rg"
  tags = [
    "fab"
  ]
}

resource "ibm_resource_group" "power_rg" {
  name = "${var.prefix}-power-rg"
  tags = [
    "fab"
  ]
}

##############################################################################
