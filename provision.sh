pushd $res_repo_vijay_resourcePath
terraform init
terraform apply -auto-approve
terraform destroy -auto-approve
popd
