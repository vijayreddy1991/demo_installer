pushd $res_repo_vijay_resourcePath
mkdir terraform
pushd terraform
terraform init
terraform destroy -auto-approve -var-file="/variable.tf"
terraform destroy -auto-approve -var-file="/variable.tf"
popd
