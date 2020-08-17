#!/bin/sh

set -e

export TF_IN_AUTOMATION="true"

cd ${TERRAFORM_DIRECTORY}
terraform init -backend-config="${TERRAFORM_CONFIG}"
terraform apply -var-file="${TERRAFORM_TFVARS}"