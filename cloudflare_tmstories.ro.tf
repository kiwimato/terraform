resource "cloudflare_zone" "tmstories-ro" {
  zone = "tmstories.ro"
}

resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.tmstories-ro.id
  name    = "@"
  value   = var.hostnames.tm-stories-app
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.tmstories-ro.id
  name    = "www"
  value   = var.hostnames.tm-stories-app
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

// Mail
resource "cloudflare_record" "tmstories-mx" {
  zone_id  = cloudflare_zone.tmstories-ro.id
  name     = "tmstories.ro"
  value    = "aspmx.l.google.com"
  priority = 1
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "tmstories-mx-alt1" {
  zone_id  = cloudflare_zone.tmstories-ro.id
  name     = "tmstories.ro"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "tmstories-mx-alt2" {
  zone_id  = cloudflare_zone.tmstories-ro.id
  name     = "tmstories.ro"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "tmstories-mx-alt3" {
  zone_id  = cloudflare_zone.tmstories-ro.id
  name     = "tmstories.ro"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "tmstories-mx-alt4" {
  zone_id  = cloudflare_zone.tmstories-ro.id
  name     = "tmstories.ro"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "tmstories-mx-verification" {
  zone_id  = cloudflare_zone.tmstories-ro.id
  name     = "tmstories.ro"
  value    = "63yap4t6jgs4wnjksr7yzv2kgk3ptdv4cisc6fntzy2jbrcxts3a.mx-verification.google.com"
  priority = 15
  type     = "MX"
  ttl      = 1
}

