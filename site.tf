provider "digitalocean" {
}

provider "cloudflare" {
  version = "~> 2.0"
}

// Terraform doesn't support DO spaces as backend, but luckily we can use S3 and trick it to use it anyway, since Spaces is very similar with S3.
terraform {
  backend "s3" {
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    endpoint                    = "https://fra1.digitaloceanspaces.com"
    region                      = "fra1"
    bucket                      = "dacia.ninja" // name of your space
    key                         = "terraform/digitalocean/terraform.tfstate"
  }
}
