resource "scalr_workspace" "poc" {
  name = "tf-azure-deployment-ws"
  environment_id = data.scalr_vcs_provider.manager.id
  vcs_provider_id = data.scalr_vcs_provider.manager.id
  var_files = ["terraform.tfvars"]

  vcs_repo {
    identifier = "tf-azure-git"
    branch = "scalr"
  }
}

data "scalr_vcs_provider" "manager" {
  name = "tf-azure-git"
  account_id="acc-uerkcntb0ldlqf0"
}
