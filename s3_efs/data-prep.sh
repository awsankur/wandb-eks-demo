#!/bin/bash
# first argument - name of s3 bucket
# second argument - mount path

echo "S3 bucket for downloading the data - ${1}"
echo "Mount path - ${2}"

# NOTE: THIS TAKES WAY TOO LONG. THERE SHOULD BE A BETTER SOLUTION
cd ./shared-efs
mkdir wandb-finbert
cd ./wandb-finbert

echo "copying ......."

aws s3 cp s3://wandb-finbert/stock_data.csv ./

echo "done ......"
# echo $(ls $2)
