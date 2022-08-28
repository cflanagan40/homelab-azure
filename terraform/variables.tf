#--------------------------------------------
# Proxmox Provider Variables
# Used to connect to to proxmox
#---------------------------------------------

variable "proxmox_uri" {
  type = string
}

variable "proxmox_user" {
  type = string
}

variable "proxmox_pass" {
  type = string
}

variable datacenter_name {
  type = string
}

variable template_name {
  type = string
  default = "ubuntu-2004-cloudinit-template"
} 

variable hostname_prefix {
  type = string
}
# ---------------------------------------------------------------------------------------------------------------------
# CLOUD INIT VARIABLES
# Variables used for generation of metadata and userdata.
# ---------------------------------------------------------------------------------------------------------------------

variable username {
  type = string
}

variable ssh_public_key {
  type        = string
  description = "Location of SSH public key."
}

variable packages {
  type    = list
  default = []
}

variable dhcp {
  type    = string
  default = "true"
}

variable ip_address {
  type    = string
  default = ""
}

variable netmask {
  type    = string
  default = ""
}

variable gateway {
  type    = string
  default = ""
}

variable nameservers {
  type    = list
  default = []
}
