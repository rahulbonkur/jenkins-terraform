terraform {
  backend "s3" {
    bucket         = "rahul-jenkins"
    key            = "network/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    use_lockfile   = true
  }
}
