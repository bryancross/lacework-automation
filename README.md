# lacework-automation

### Authentication/Credentials

You'll need to configure a [Lacework Inline Scanner instance](https://support.lacework.com/hc/en-us/articles/1500001777821-Integrate-Inline-Scanner#create-an-inline-scanner-integration-in-lacework) and download or store a [Scanner Access Token](https://support.lacework.com/hc/en-us/articles/1500001777821-Integrate-Inline-Scanner#obtain-the-inline-scanner-and-authorization-token).  Use these to populate the following secrets:   

Set the following secrets for these workflows:

| Secret | Description | 
|---|---|
| LW_ACCOUNT_NAME | Your lacework account name.  Omit `lacework.net` | 
| LW_ACCESS_TOKEN | Your scanner access token.  |

## Example workflows for automating Lacework integration and scanning

### [aws-deploy-manual.yml](https://github.com/BidnessForB/lw-auto/blob/main/.github/workflows/aws-deploy-manual.yml)

Deploy lacework integration using Terraform to AWS, specifying install parameters manually at runtime. 

### [dyna-issue.yml](https://github.com/BidnessForB/lw-auto/blob/main/.github/workflows/dyna-issue.yml)

Non Lacework specific example of GitHub workflow's broad capabilities beyond CI/CD

### [aws-deploy.yml](https://github.com/BidnessForB/lw-auto/blob/main/.github/workflows/aws-deploy.yml)

Deploy Lacework integration with AWS using Terraform and GitHub secrets.  Terraform state is preserved in S3

### [aws-undeploy.yml](https://github.com/BidnessForB/lw-auto/blob/main/.github/workflows/aws-deploy.yml)

Remove (un-deploy) Lacework integration with AWS using Terraform and GitHub secrets.  Terraform state is preserved.

### [lw-scan-container.yml](https://github.com/BidnessForB/lw-auto/blob/main/.github/workflows/lw-scan-container.yml)

Initiate a Lacework container vulnerability scan manually or on creation of a Pull Request.  
