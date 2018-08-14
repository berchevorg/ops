# token variable
variable "github_token" {
  description = "github token"
}

# repo
variable "repo" {
  description = "repo"
  default     = "example"
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
