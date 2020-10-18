resource "cloudflare_zone" "tmstories-ro" {
  zone = "tmstories.ro"
}

resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.tmstories-ro.id
  name    = "@"
  value   = digitalocean_droplet.ocean-dacia-ninja.ipv4_address
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.tmstories-ro.id
  name    = "www"
  value   = digitalocean_droplet.ocean-dacia-ninja.ipv4_address
  type    = "A"
  ttl     = 1
  proxied = true
}