provider "virtualbox" {
  version = ">= 0.2.2"
}

resource "virtualbox_vm" "ubuntu_vm" {
  name   = "ubuntu-22-04-vm"
  cpus   = 2
  memory = "2048 mib"

  image = "E:/Software/ubuntu-22.04.5-live-server-amd64.iso"

  network_adapter {
    type = "nat"
  }

  storage_controller {
    name = "SATA Controller"
    type = "sata"

    device {
      port     = 0
      device   = 0
      type     = "hdd"
      image    = ""E:/Software/ubuntu-22-04.vdi"
      size     = 15000 # size in MB
    }

    device {
      port     = 1
      device   = 0
      type     = "dvd"
      image    = "E:/Software/ubuntu-22.04.5-live-server-amd64.iso"
    }
  }
}
