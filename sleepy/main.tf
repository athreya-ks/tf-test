resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep12" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep13" {
  depends_on = [null_resource.sleep12]
  provisioner "local-exec" {
    command = "sleep 12m"
  }
}

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}
