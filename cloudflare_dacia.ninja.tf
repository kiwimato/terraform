resource "cloudflare_zone" "dacia-ninja" {
  zone = "dacia.ninja"
}

// UnRAID
resource "cloudflare_record" "dacia-ninja-root" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "@"
  value   = var.IPv4.nadastie
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "www-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "www"
  value   = var.IPv4.nadastie
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "foreman-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "foreman"
  value   = var.IPv4.nadastie
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "pf-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "pf"
  value   = var.IPv4.nadastie
  type    = "A"
  ttl     = 60
}

// Nadastie
resource "cloudflare_record" "nadastie-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "nadastie"
  value   = var.IPv4.nadastie
  type    = "A"
  ttl     = 60
}

// Ocean
resource "cloudflare_record" "dojo-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "dojo"
  value   = var.IPv4.ocean
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "ego-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "ego"
  value   = var.IPv4.ocean
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "ocean-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "ocean"
  value   = var.IPv4.ocean
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "resume-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "resume"
  value   = var.IPv4.ocean
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "wim-dacia-ninja" {
  zone_id = cloudflare_zone.dacia-ninja.id
  name    = "wim"
  value   = var.IPv4.ocean
  type    = "A"
  ttl     = 60
}
