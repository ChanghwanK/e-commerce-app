terraform {
  backend "s3" {
    bucket      = "my-e-commerce-terraform-state"
    key         = "dev/apne2/network/vpc/terraform.tfstate"
    region      = "ap-northeast-2"
    max_retries = 3
  }
}
