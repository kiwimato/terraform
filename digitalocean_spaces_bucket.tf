// Bucket for tmstories.ro
resource "digitalocean_spaces_bucket" "tmstories" {
  name = "tmstories"
  region = "fra1"
  acl = "public-read"

  versioning {
    enabled = true
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET"]
    allowed_origins = [
      "https://tmstories.ro",
      "https://www.tmstories.ro"
    ]
    max_age_seconds = 3000
  }
}

# Add a CDN endpoint to the Spaces Bucket
resource "digitalocean_cdn" "mycdn" {
  origin = digitalocean_spaces_bucket.tmstories.bucket_domain_name
}

// Bucket for tmstories.ro
resource "digitalocean_spaces_bucket" "wim" {
  name = "wim-dacia-ninja"
  region = "fra1"
  acl = "public-read"

  versioning {
    enabled = true
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = [
      "https://${var.hostnames.wim-dacia-ninja}",
      "https://wim.dacia.ninja",
      "http://localhost:8080"
    ]
    max_age_seconds = 3000
  }
}

# Add a CDN endpoint to the Spaces Bucket
resource "digitalocean_cdn" "wim-cdn" {
  origin = digitalocean_spaces_bucket.wim.bucket_domain_name
}
