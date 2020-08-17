#!/bin/bash
aws sts assume-role --role-arn arn:aws:iam::617007418524:role/automation-concourse --role-session-name s3-access-example > sts.json
cat sts.json