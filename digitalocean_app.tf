resource "digitalocean_app" "tmstories-ro" {
  spec {
    name   = "tmstories"
    region = "fra"

    domain {
      name = "tmstories.ro"
      type = "PRIMARY"
    }

    domain {
      name = "www.tmstories.ro"
      type = "ALIAS"
    }

    static_site {
      name          = "tmstories"
      build_command = "npm run build"
      output_dir    = "dist"

      github {
        repo           = "juliageek/tm-stories"
        branch         = "main"
        deploy_on_push = true
      }
    }
  }
}

resource "digitalocean_app" "wim-dacia-ninja" {
  spec {
    name   = "wim"
    region = "fra"

    domain {
      name = "wim.dacia.ninja"
      type = "PRIMARY"
    }

    static_site {
      name          = "wim"
      output_dir    = "_site"

      github {
        repo           = "kiwimato/web-replay-gen-wim"
        branch         = "main"
        deploy_on_push = true
      }
    }
  }
}

//resource "digitalocean_app" "autotvi" {
//  spec {
//    name   = "autotvi"
//    region = "fra"
//
//    domain {
//      name = "autotvi.ro"
//      type = "PRIMARY"
//    }
//
//    domain {
//      name = "www.autotvi.ro"
//      type = "ALIAS"
//    }
//
//    static_site {
//      name          = "autotvi"
//
//      github {
//        repo           = "kiwimato/autotvi"
//        branch         = "main"
//        deploy_on_push = true
//      }
//    }
//  }
//}
//
//locals {
//  app_hostnames = {
//    autotvi = split("/",digitalocean_app.autotvi.live_url)[2]
//  }
//}
