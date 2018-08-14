# token variable
variable "github_token" {
  description = "github token"
}

# name of the named repo
variable "repo" {
  default = "example"
  description = "the repo to create by default"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "VisitBG"
}

resource "github_repository" "example" {
  name        = "${var.repo}"
  description = "My awesome codebase"
}

resource "random_pet" "repo" {
  length    = "4"
  separator = "-"
}

resource "github_repository" "example2" {
  name        = "${random_pet.repo.id}"
  description = "My awesome pet project"
}
