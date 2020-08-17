#!/bin/sh

set -e

export TF_IN_AUTOMATION="true"

cd ${TERRAFORM_DIRECTORY}
terraform init -backend-config="${TERRAFORM_CONFIG}"
terraform destroy -auto-approve -var-file="${TERRAFORM_TFVARS}"