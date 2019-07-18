# Sample terraform code to show how to use google cloud provider with TFE

### The recommended practice when using Terraform is to have Terraform-specific service accounts to authenticate with Google Cloud Platform

## Prerequisites

- git
- Subscription with Terraform Enterprise SaaS
- Subscription with Google Cloud Platform

## How to use

- Fork the repo
- Log in to TFE
- Add new VCS provider for GitHub if not have configured it yet (`For more details on how to integrate TFE with your version control system (VCS) provider please refer to` [terraform documentation](https://www.terraform.io/docs/enterprise/vcs/github.html))
- Create new workspace and connect it to Version Control with GitHub VCS provider and select the forked repo
- Create `Terraform-specific service account` on GCP to use to authenticate with Google Cloud Platform (Check documentaion for instrucions on [creating service account](https://cloud.google.com/docs/authentication/getting-started) on GCP)
- Get the `credential service account` as a json file
- Add a new `sensitive` variable `credentials` as `terraform variables` in TFE and set its value be the content of your credentials json file.`

<img src="pictures/sensitive terraform variable.png" />
