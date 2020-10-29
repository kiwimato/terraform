resource "cloudflare_zone" "codeverse" {
  zone = "codeverse.nl"
}

// Mail
resource "cloudflare_record" "codeverse-mx" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "codeverse.nl"
  value    = "aspmx.l.google.com"
  priority = 1
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-mx-alt1" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "codeverse.nl"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-mx-alt2" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "codeverse.nl"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-mx-alt3" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "codeverse.nl"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-mx-alt4" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "codeverse.nl"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-mx-verification" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "codeverse.nl"
  value    = "ryfgtttfv5k6pk3nnosys6nafjdqobpkp6gev5zrmv7xbjrb46tq.mx-verification.google.com"
  priority = 15
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-dkim" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "google._domainkey"
  value    = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuKkTjfQYG75PQE8qN4zPx3mTeDG62DFfQqGLmKBGDzaCRKLkaoeuzma3AAyd0EBnMdneYoKxL0zLGL5HHRL1MkfxgYA04/gM6JDb2XHSYfhFMzjmCPowL4RqTRNa7xj5KlhPOUMaSQX790HeyVe1yXAucH5f3kdo68/kGb2b7ahn8kmIHlpYZMam8geyDxM8a7CtHfzzE0fgjwwEDxpTpql9BCqm1ZcIlUl8VWPIFCkrzqqACWH8AFmhGwO0m6hO5s+3DNvbFEd2jgjVVPBZ1enhrm2V7zvclx3CtahzlHw3gREKzHniFgHISFypLUu+extB0ELHVsPetDC0s67/9wIDAQAB"
  type     = "TXT"
  ttl      = 1
}

resource "cloudflare_record" "codeverse-dmarc" {
  zone_id  = cloudflare_zone.codeverse.id
  name     = "_dmarc"
  value    = "v=DMARC1; p=quarantine; pct=100; rua=mailto:re+zdak9grulki@dmarc.postmarkapp.com; sp=quarantine; adkim=s; aspf=s;"
  type     = "TXT"
  ttl      = 1
}
