# Terraform

This is just a small Terraform project which I use to manage my personal domains and a couple of projects.

## Initial setup
We always have to `init` first after you clone the repo.
```bash
terraform init
```

Optional, for lazy people:
```bash
alias tp='terraform plan -out=apply.tfplan'
alias ta='terraform apply "apply.tfplan"'
```

## Usage 
For this you'll need a Cloudflare API Token, Digital Ocean Access Token and Spaces key id & secret access key.
```bash
export CLOUDFLARE_API_TOKEN=ZZZZ
export DIGITALOCEAN_ACCESS_TOKEN=YYYYY
export DO_TOKEN=${DIGITALOCEAN_ACCESS_TOKEN} # only used by doctl
export SPACES_ACCESS_KEY_ID=XXXX
export SPACES_SECRET_ACCESS_KEY=XXXXXX
export AWS_ACCESS_KEY_ID="${SPACES_ACCESS_KEY_ID}"
export AWS_SECRET_ACCESS_KEY="${SPACES_SECRET_ACCESS_KEY}"
```
Note: Since Terraform doesn't yet have a DigitalOcean Space backend, we need `AWS_*` to point to `SPACES_*` credentials 
You can also install [doctl](https://github.com/digitalocean/doctl/blob/master/README.md) which makes it easier to query DO resources.

Always plan first!
```bash
terraform plan -out=apply.tfplan
```

If you're happy with the changes, apply them:
```bash
terraform apply
```