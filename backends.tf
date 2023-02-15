terraform {
  cloud {
    organization = "project-practice"

    workspaces {
      name = "terransible"
    }
  }
}