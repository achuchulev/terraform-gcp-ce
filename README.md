# Sample terraform code to use google cloud provider with TFE

## Prerequisites

- git
- Subscription with Terraform Enterprise SaaS
- Subscription with Google Cloud Platform

## How to use

### The recommended practice when using Terraform is to have Terraform-specific service accounts to authenticate with Google Cloud Platform.

You can create such following the guide on the link below.
https://cloud.google.com/docs/authentication/getting-started

- Fork the repo
- Log in to TFE
- Add new VCS provider for GitHub if not have configured it yet (`For more details on how to integrate TFE with your version control system (VCS) provider please refer to` [terraform documentation](https://www.terraform.io/docs/enterprise/vcs/github.html))
- Create new repo vith GitHub VCS provider and select forked repo
- Create `Terraform-specific service account` on GCP to authenticate with
- Get the `credential service account` as a json file
- Add new `sensitive` variable `credentials` as `terraform variables` in TFE and set its value be the content of your credentials json file.`

<img src="pictures/sensitive terraform variable.png" />
