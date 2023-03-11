output "ipv4_address" {
  value = digitalocean_droplet.vpn-uk-dacia-ninja.ipv4_address
}

output "vpn_uk_endpoint" {
  value = cloudflare_record.vpn-uk-dacia-ninja.hostname
}

//output "autotvi_hostname" {
//  value = local.app_hostnames.autotvi
//}