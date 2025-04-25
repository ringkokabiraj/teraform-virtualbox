terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = ">= 0.2.2"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu_vm" {
  name   = "ubuntu-vm"
  image  = "E:/Software/ubuntu-22-04.vdi"
  cpus   = 2
  memory = "1024 mib"

  disk {
    image = "E:/Software/ubuntu-22-04.vdi"
    size  = 15000
  }

  network_adapter {
    type           = "nat"
    host_interface = "Ethernet"
  }

  device {
    port   = 1
    device = 0
    type   = "dvd"
    image  = "E:/Software/ubuntu-22.04.5-live-server-amd64.iso"
  }
}