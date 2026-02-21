#!/bin/bash

# Author : Tushar
# Date : 21-FEB
# Version : V1
# This script will report the AWS usage


set -x


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users 



# list S3 buckets 
echo "Print list ofS3 buckets"
aws s3 ls 

# list EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list Lambda 
echo "Print list of Lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM users"
aws iam list-users 


