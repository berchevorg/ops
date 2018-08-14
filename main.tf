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
