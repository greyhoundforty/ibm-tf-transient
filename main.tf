resource "ibm_compute_vm_instance" "transient_node" {
  transient = "true"
  count                = "${var.node_count}"
  hostname             = "${var.hostname}-${count.index+1}"
  domain               = "${var.domain}"
  os_reference_code    = "${var.os_reference_code}"
  datacenter           = "${var.datacenter}"
  network_speed        = 1000
  hourly_billing       = true
  private_network_only = false
  flavor_key_name      = "${var.flavor_key_name}"
  local_disk           = false
}
