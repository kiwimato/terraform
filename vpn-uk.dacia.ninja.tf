resource "digitalocean_droplet" "vpn-uk-dacia-ninja" {
  backups    = false
  image      = "ubuntu-20-04-x64"
  monitoring = true
  name       = "vpn-uk.dacia.ninja"
  region     = "lon1"
  size       = "s-1vcpu-1gb-amd"
  ssh_keys   = [
    30193785, #deiu
    25670117, #yubikey 4 1st
    25438609, #Yubikey 2nd prv8 nfc
    24059548, #yubikey
  ]

  lifecycle {
    ignore_changes = [ tags ]
  }

  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    timeout = "2m"
  }

  provisioner "remote-exec" {
    script = "templates/install-wireguard.sh"
  }
}

# Create a DNS record for the VPN
resource "cloudflare_record" "vpn-uk-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "vpn-uk"
  value   = digitalocean_droplet.vpn-uk-dacia-ninja.ipv4_address
  type    = "A"
  ttl     = 1
}
