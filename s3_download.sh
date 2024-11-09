#!/bin/bash

# Prompt the user for AWS credentials
read -p "Enter your AWS Access Key ID: " AWS_ACCESS_KEY_ID
read -p "Enter your AWS Secret Access Key: " AWS_SECRET_ACCESS_KEY
read -p "Enter the AWS region (e.g., us-west-2): " AWS_REGION

# Configure AWS CLI with the provided credentials
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set region $AWS_REGION

# Prompt the user for the Amazon S3 bucket name
read -p "Enter the Amazon S3 bucket name: " BUCKET_NAME

# Prompt the user for the local destination path
read -p "Enter the local destination path: " DESTINATION_PATH

# Confirm execution
echo "Downloading files from bucket '$BUCKET_NAME' to local folder '$DESTINATION_PATH'..."
echo "This may take some time depending on the file size and internet speed."

# Execute the S3 sync
aws s3 sync s3://$BUCKET_NAME $DESTINATION_PATH

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "Download completed successfully."
else
    echo "There was an issue downloading the files. Please check the details and try again."
fi