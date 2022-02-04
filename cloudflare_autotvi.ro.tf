resource "cloudflare_zone" "autotvi-ro" {
  zone = "autotvi.ro"
}

resource "cloudflare_record" "autotvi-ro-root" {
  zone_id = cloudflare_zone.autotvi-ro.id
  name    = "@"
  value   = digitalocean_droplet.ocean-dacia-ninja.ipv4_address
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "autotvi-ro-www" {
  zone_id = cloudflare_zone.autotvi-ro.id
  name    = "www"
  value   = digitalocean_droplet.ocean-dacia-ninja.ipv4_address
  type    = "A"
  ttl     = 1
  proxied = true
}
