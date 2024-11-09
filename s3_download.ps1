# Prompt the user for AWS credentials
$AWSAccessKeyID = Read-Host "Enter your AWS Access Key ID"
$AWSSecretAccessKey = Read-Host "Enter your AWS Secret Access Key"
$AWSRegion = Read-Host "Enter the AWS region (e.g., us-west-2)"

# Configure AWS CLI with the provided credentials
aws configure set aws_access_key_id $AWSAccessKeyID
aws configure set aws_secret_access_key $AWSSecretAccessKey
aws configure set region $AWSRegion

# Prompt the user for the Amazon S3 bucket name
$BucketName = Read-Host "Enter the Amazon S3 bucket name"

# Prompt the user for the local destination path
$DestinationPath = Read-Host "Enter the local destination path"

# Confirm execution
Write-Output "Downloading files from bucket '$BucketName' to local folder '$DestinationPath'..."
Write-Output "This may take some time depending on the file size and internet speed."

# Execute the S3 sync
aws s3 sync "s3://$BucketName" "$DestinationPath"

# Check if the command was successful
if ($LASTEXITCODE -eq 0) {
    Write-Output "Download completed successfully."
} else {
    Write-Output "There was an issue downloading the files. Please check the details and try again."
}