##############################################################################
# Object Storage Instance Savefiles
##############################################################################

resource "random_string" "savefiles_random_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "ibm_resource_instance" "savefiles_object_storage" {
  name              = "${var.prefix}-savefiles-object-storage-${random_string.savefiles_random_suffix.result}"
  resource_group_id = ibm_resource_group.service_rg.id
  service           = "cloud-object-storage"
  location          = "global"
  plan              = "standard"
  tags = [
    "fab"
  ]
}

resource "ibm_iam_authorization_policy" "savefiles_cos_to_kms_kms_policy" {
  source_service_name         = "cloud-object-storage"
  source_resource_instance_id = ibm_resource_instance.savefiles_object_storage.guid
  description                 = "Allow COS instance to read from KMS instance"
  target_service_name         = "kms"
  target_resource_instance_id = ibm_resource_instance.kms.guid
  roles = [
    "Reader"
  ]
}

resource "ibm_cos_bucket" "savefiles_object_storage_aix_bucket" {
  bucket_name          = "${var.prefix}-savefiles-aix-${random_string.savefiles_random_suffix.result}"
  resource_instance_id = ibm_resource_instance.savefiles_object_storage.id
  storage_class        = "smart"
  endpoint_type        = "public"
  force_delete         = false
  region_location      = var.region
}

resource "ibm_cos_bucket" "savefiles_object_storage_ibm_i_bucket" {
  bucket_name          = "${var.prefix}-savefiles-ibm-i-${random_string.savefiles_random_suffix.result}"
  resource_instance_id = ibm_resource_instance.savefiles_object_storage.id
  storage_class        = "smart"
  endpoint_type        = "public"
  force_delete         = false
  region_location      = var.region
}

resource "ibm_resource_key" "savefiles_object_storage_key_power" {
  name                 = "${var.prefix}-savefiles-key-power-${random_string.savefiles_random_suffix.result}"
  resource_instance_id = ibm_resource_instance.savefiles_object_storage.id
  role                 = "Writer"
  tags = [
    "fab"
  ]
  parameters = {
    HMAC = true
  }
}

##############################################################################

##############################################################################
# Object Storage Instance A Tracker
##############################################################################

resource "ibm_resource_instance" "a_tracker_object_storage" {
  name              = "${var.prefix}-a-tracker-object-storage"
  resource_group_id = ibm_resource_group.service_rg.id
  service           = "cloud-object-storage"
  location          = "global"
  plan              = "standard"
  tags = [
    "fab"
  ]
}

resource "ibm_iam_authorization_policy" "a_tracker_cos_to_kms_kms_policy" {
  source_service_name         = "cloud-object-storage"
  source_resource_instance_id = ibm_resource_instance.a_tracker_object_storage.guid
  description                 = "Allow COS instance to read from KMS instance"
  target_service_name         = "kms"
  target_resource_instance_id = ibm_resource_instance.kms.guid
  roles = [
    "Reader"
  ]
}

resource "ibm_cos_bucket" "a_tracker_object_storage_a_tracker_bucket" {
  bucket_name          = "${var.prefix}-a-tracker-a-tracker"
  resource_instance_id = ibm_resource_instance.a_tracker_object_storage.id
  storage_class        = "standard"
  endpoint_type        = "public"
  force_delete         = false
  region_location      = var.region
  key_protect          = ibm_kms_key.kms_atracker_key_key.crn
  depends_on = [
    ibm_iam_authorization_policy.a_tracker_cos_to_kms_kms_policy
  ]
}

resource "ibm_resource_key" "a_tracker_object_storage_key_a_tracker_cos" {
  name                 = "${var.prefix}-a-tracker-key-a-tracker-cos"
  resource_instance_id = ibm_resource_instance.a_tracker_object_storage.id
  role                 = "Writer"
  tags = [
    "fab"
  ]
}

##############################################################################

