#!/bin/bash
# first argument - name of s3 bucket
# second argument - mount path

echo "S3 bucket for downloading the data - ${1}"
echo "Mount path - ${2}"

DIR="model-"$(date '+%Y-%m-%d_%H:%M:%S')

cd /shared-efs/wandb-finbert/job-v4ol6tz6/run-0/

aws s3 cp checkpoint.tar s3://wandb-finbert/ 
