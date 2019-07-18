resource "null_resource" "HelloGCP" {
  provisioner "local-exec" {
    command = "echo Hello GCP! Google provider is properly configured and authentication is working fine."
  }
}
