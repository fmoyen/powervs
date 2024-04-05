##############################################################################
# Atracker Resources
##############################################################################

resource "ibm_atracker_target" "atracker_cos_target" {
  name        = "${var.prefix}-atracker-cos"
  region      = var.region
  target_type = "cloud_object_storage"
  cos_endpoint {
    endpoint   = "s3.private.${var.region}.cloud-object-storage.appdomain.cloud"
    target_crn = ibm_resource_instance.a_tracker_object_storage.id
    bucket     = ibm_cos_bucket.a_tracker_object_storage_a_tracker_bucket.bucket_name
    api_key    = ibm_resource_key.a_tracker_object_storage_key_a_tracker_cos.credentials.apikey
  }
}

resource "ibm_atracker_route" "atracker_cos_route" {
  name = "${var.prefix}-atracker-cos-route"
  rules {
    locations = [
      "global",
      var.region
    ]
    target_ids = [
      ibm_atracker_target.atracker_cos_target.id
    ]
  }
}

##############################################################################
