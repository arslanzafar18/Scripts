!#/bin/bash

###################
# Author: Arslan Zafar
# date:   03/10/2025
#
# vesion: v1
#
# This is for the usage of Aws resource Reporting Daily basis
###################

set -x

#EC2
#S3
#IAM Users
#lamda Functions



#list S3 buckets
echo "Print List of s3 buckets"
aws S3 ls

#list EC2 instances
echo "Print List of s3 instances"
aws ec2 describe-instances \
  --region eu-north-1 \
  --query "Reservations[*].Instances[*].{ID:InstanceId,State:State.Name,Type:InstanceType,IP:PublicIpAddress}" \
  --output table

#list IAM users
echo "Print List of IAM Users"
aws iam list-users



#list lambda functions
echo "Print List of Lambda Functions"
aws lambda list-functions
