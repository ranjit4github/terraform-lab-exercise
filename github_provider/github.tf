terraform{
  required_providers{
    github = {
       source = "integrations/github"
       version = "4.23.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "terraformexample" { 
   name = "mynewrepo-terraform" 
   description = "github terraform example" 
   visibility = "private"
}
