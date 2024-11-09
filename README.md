
# S3 File Download Scripts

## Description
This repository contains scripts to download files from an Amazon S3 bucket to a local directory. The scripts are provided in both Bash and PowerShell, making it easy to use across different operating systems, including Linux, macOS, and Windows.

## Features
- **AWS Configuration**: Prompts for AWS credentials (Access Key ID, Secret Access Key, and Region) and configures them for the current session.
- **S3 Synchronization**: Uses the `aws s3 sync` command to efficiently download files from an S3 bucket to a specified local folder.
- **Cross-Platform**: Includes both Bash and PowerShell scripts for flexibility across operating systems.

## Requirements
- **AWS CLI**: Ensure the AWS Command Line Interface (CLI) is installed and configured on your system. You can download it [here](https://aws.amazon.com/cli/).
- **AWS Permissions**: The AWS credentials used must have `s3:GetObject` permissions for the specified bucket.

## Usage

### Bash Script (Linux/macOS)
1. Open a terminal.
2. Navigate to the directory containing the `s3_download.sh` script.
3. Run the script:
   ```bash
   chmod +x s3_download.sh
   ./s3_download.sh
   ```
4. Follow the prompts to enter your AWS credentials, S3 bucket name, and local destination path.

### PowerShell Script (Windows)
1. Open PowerShell.
2. Navigate to the directory containing the `s3_download.ps1` script.
3. Run the script:
   ```powershell
   .\s3_download.ps1
   ```
4. Follow the prompts to enter your AWS credentials, S3 bucket name, and local destination path.

## Notes
- Ensure that you have sufficient storage space in the destination path to accommodate the download.
- The download time will vary depending on your internet speed and the total size of the files in the S3 bucket.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
