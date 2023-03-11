//resource "cloudflare_zone" "autotvi-ro" {
//  zone = "autotvi.ro"
//}
//
//resource "cloudflare_record" "autotvi-ro-root" {
//  zone_id = cloudflare_zone.autotvi-ro.id
//  name    = "@"
//  value   = var.IPv4.ocean
//  type    = "A"
//  ttl     = 1
//  proxied = true
//}
//
//resource "cloudflare_record" "autotvi-ro-www" {
//  zone_id = cloudflare_zone.autotvi-ro.id
//  name    = "www"
//  value   = var.IPv4.ocean
//  type    = "A"
//  ttl     = 1
//  proxied = true
//}
