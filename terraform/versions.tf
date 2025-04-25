terraform {
  required_version = ">= 1.0.0"

  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = ">= 0.2.2"
    }
  }
}
