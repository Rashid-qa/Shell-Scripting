
#!/bin/bash

######################
# Author: Rashid
# date: 27 May 2024
# Description: This script will report the AWS resource usage
# resources: aws s3, Ec2, IAM users, and lambda function
######################

set -x  # This command enables debug mode

echo "List of all s3 buckets available"
aws s3 ls >> resourceTracker

echo "List of all ec2 instances available"
aws ec2 describe-instances | jq '.Reservation[].Instances[].InstanceId[]'  >> resourceTracker

echo "List of all lambda function available"
aws lambda list-functions  >> resourceTracker

echo "List of all IAM users available"
aws iam list-users  >> resourceTracker



