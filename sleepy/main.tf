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
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep14" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep15" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep16" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep17" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep18" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep19" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep20" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 29m"
  }
}

resource "null_resource" "sleep21" {
  depends_on = [null_resource.sleep]
  provisioner "local-exec" {
    command = "sleep 15m"
  }
}

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}
