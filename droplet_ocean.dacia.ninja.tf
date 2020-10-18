resource "digitalocean_droplet" "ocean-dacia-ninja" {
  backups = true
  image  = "34487567"
  monitoring = true
  name   = "ocean.dacia.ninja"
  region = "fra1"
  size   = "s-1vcpu-2gb"
}