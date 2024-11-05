resource "aws_ecr_repository" "repo1" {
  name                 = "mawsim-dev"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = false
  }
  tags = {
    Name = "revibe-dev-backend"
  }
}
