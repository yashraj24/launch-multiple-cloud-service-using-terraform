provider "aws" {
  region                  = "us-west-2"
  profile                 = "default"
}

provider "google" {
  project     = "terraform-project-1-314919"
  region      = "asia-south1"
  credentials = "terraform-project-1-key.json"
}