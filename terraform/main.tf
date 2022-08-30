terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = ">=2.8.0"
    },
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

provider "proxmox" {
  pm_tls_insecure = true
  pm_api_url      = var.proxmox_uri
  pm_api_token_id         = var.proxmox_user
  pm_api_token_secret     = var.proxmox_pass
}

module "azure-nodes" {
  source = "github.com/cflanagan40/proxmox-cloud-init.git"
  count = 1
  vm_name = "azure-${count.index}"
  cpu = 2
  memory = 2048
}

resource "local_file" "ansible_inventory" {
  content = templatefile("templates/hosts.tpl",{
    azure_ip = module.azure-nodes.*.default_ipv4_address
  })
  filename = "inventory"
}
