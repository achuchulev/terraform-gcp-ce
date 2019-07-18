resource "null_resource" "HelloGCP" {
  
  triggers {
        build_number = "${timestamp()}"
  }
  
  provisioner "local-exec" {
    command = "echo Hello GCP! Google provider is properly configured and authentication is working fine."
  }

}
