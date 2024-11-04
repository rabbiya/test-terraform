
terraform {
  backend "s3" {
    bucket         = "mawsim-test-dev-terraform-state324"
    key            = "terraform/state/terraform.tfstate"
    region         = "me-central-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
