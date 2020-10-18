resource "digitalocean_spaces_bucket" "dacia-ninja" {
  acl = "private"
  name = "dacia.ninja"
  region = "fra1"
}