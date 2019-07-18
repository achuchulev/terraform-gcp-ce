provider "google" {
  credentials = "${var.credentials}"
  project     = "nomad-multiregion"
  region      = "us-central1"
}
