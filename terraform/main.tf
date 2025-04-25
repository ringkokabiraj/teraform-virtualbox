provider "virtualbox" {
  # No config needed if VirtualBox is installed
}

resource "virtualbox_vm" "ubuntu_vm" {
  name      = "UbuntuVM"
  image     = "https://cloud-images.ubuntu.com/minimal/releases/focal/release/ubuntu-20.04-minimal-cloudimg-amd64.vdi"
  cpus      = 2
  memory    = 1024

  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }

  storage_controller {
    name = "SATA Controller"
  }

  disk {
    image = "ubuntu-20.04-minimal.vdi"
  }
}
