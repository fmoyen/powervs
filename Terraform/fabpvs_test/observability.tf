##############################################################################
# Atracker Instance
##############################################################################

resource "ibm_resource_instance" "atracker" {
  name              = "${var.prefix}-${var.region}-atracker"
  resource_group_id = ibm_resource_group.service_rg.id
  service           = "logdnaat"
  plan              = "lite"
  location          = var.region
  service_endpoints = "public"
  tags = [
    "fab"
  ]
}

resource "ibm_resource_key" "atracker_key" {
  name                 = "${var.prefix}-${var.region}-atracker-key"
  resource_instance_id = ibm_resource_instance.atracker.id
  role                 = "Manager"
  tags = [
    "fab"
  ]
}

##############################################################################

##############################################################################
# LogDNA Instance
##############################################################################

resource "ibm_resource_instance" "logdna" {
  name              = "${var.prefix}-logdna"
  resource_group_id = ibm_resource_group.service_rg.id
  service           = "logdna"
  plan              = "7-day"
  location          = var.region
  service_endpoints = "public"
  tags = [
    "fab"
  ]
}

resource "ibm_resource_key" "logdna_key" {
  name                 = "${var.prefix}-logdna-key"
  resource_instance_id = ibm_resource_instance.logdna.id
  tags = [
    "fab"
  ]
}

##############################################################################

##############################################################################
# Sysdig Instance
##############################################################################

resource "ibm_resource_instance" "sysdig" {
  name              = "${var.prefix}-sysdig"
  resource_group_id = ibm_resource_group.service_rg.id
  service           = "sysdig-monitor"
  plan              = "graduated-tier"
  location          = var.region
  service_endpoints = "public"
  tags = [
    "fab"
  ]
}

resource "ibm_resource_key" "sysdig_key" {
  name                 = "${var.prefix}-sysdig-key"
  resource_instance_id = ibm_resource_instance.sysdig.id
  role                 = "Manager"
  tags = [
    "fab"
  ]
}

##############################################################################
