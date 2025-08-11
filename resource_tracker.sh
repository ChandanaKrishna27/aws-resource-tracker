#!/bin/bash

##############################
# Author : Chandana
# Date   : ----
# Version : v1
# Description : This script reports AWS resource usage.
##############################

# Enable debug mode (prints commands before executing)
set -x

# Output file with timestamp
output_file="resourceTracker_$(date +%F_%H-%M-%S).log"

# Resources tracked: AWS S3, AWS EC2, AWS Lambda, AWS IAM Users

# List S3 buckets
echo "Print list of S3 buckets" >> $output_file
aws s3 ls >> $output_file

# List EC2 instances
echo "Print list of EC2 instances" >> $output_file
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $output_file

# List Lambda functions
echo "Print list of Lambda functions" >> $output_file
aws lambda list-functions >> $output_file

# List IAM users
echo "Print list of IAM users" >> $output_file
aws iam list-users >> $output_file
