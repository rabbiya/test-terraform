
terraform {
  backend "s3" {
    bucket         = "mawsim-test-dev-terraform-state"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
