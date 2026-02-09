terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-20260209"
    key            = "devops/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}
