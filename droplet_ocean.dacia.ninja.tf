resource "digitalocean_droplet" "ocean-dacia-ninja" {
  backups    = true
  image      = "34487567"
  ipv6       = true
  monitoring = true
  name       = "ocean.dacia.ninja"
  region     = "fra1"
  size       = "s-2vcpu-4gb"
}