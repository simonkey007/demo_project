#!/bin/sh

set -e

export TF_IN_AUTOMATION="true"

cd ${TERRAFORM_DIRECTORY}
terraform init -backend-config="${TERRAFORM_CONFIG}"
terraform plan -var-file="${TERRAFORM_TFVARS}"
terraform apply -auto-approve -var-file="${TERRAFORM_TFVARS}"