provider "ibm" {
    region             = "eu-de"
	ibmcloud_api_key   = var.ibmcloud_api_key
}
terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"

    }
  }
}

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
  type        = string
}

resource "ibm_iam_access_group" "accgrp" {
  name        = "test"
  description = "New access group"
}

resource "ibm_iam_access_group_policy" "policy" {
  access_group_id = ibm_iam_access_group.accgrp.id
  roles           = ["Viewer"]
  resource_tags {
    name = "env"
    value = "dev"
  }
  transaction_id     = "terraformUserPolicy"
  depends_on =[ibm_iam_access_group_policy.policy]
}

resource "ibm_iam_access_group_members" "accgroupmem" {
  access_group_id = ibm_iam_access_group.accgrp.id
  ibm_ids         = ["test@in.ibm.com"]
  iam_service_ids = [ibm_iam_service_id.serviceID.id]
  iam_profile_ids = [ibm_iam_trusted_profile.profileID.id]
  depends_on =[ibm_iam_access_group_policy.policy]
}

