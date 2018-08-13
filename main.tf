# token variable
variable "github_token" {
  description = "github token"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "VisitBG"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
}

resource "random_pet" "repo" {}

resource "github_repository" "example2" {
  name        = "${random_pet.repo.id}"
  description = "My awesome pet project"
}
