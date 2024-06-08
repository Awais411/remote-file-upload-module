## Terraform Module: Remote File Upload

This document describes a Terraform module for uploading a local file to a remote server using SSH.

### Module Structure

The module directory contains the following files:

- **variables.tf:** Defines variables for configuration.
- **main.tf:** Implements the file upload functionality using a null resource and a file provisioner.

### Functionality

This module allows you to upload a file from your local machine to a designated location on a remote server. It utilizes SSH for secure file transfer.

### Variables

| Variable Name | Type | Description |
|---|---|---|
| `server_address` | string | IP address or hostname of the remote server. |
| `server_username` | string | Username for authentication on the remote server. |
| `server_private_key_path` | string | Path to the private key file used for SSH authentication. |
| `local_file_path` | string | Path to the local file you want to upload. |
| `remote_file_path` | string | Path on the remote server where the file should be uploaded. |

**Important Note:**

- Replace the placeholder values with your actual configuration details.
- **Security Considerations:**
    - **Private Key:** The `server_private_key_path` variable stores the path to your private key file. This file grants access to the remote server. Avoid exposing it in your Terraform configuration. Consider using environment variables or a secure key management solution.
    - **Remote Server Access:** Ensure you have the necessary permissions on the remote server to upload files to the specified location.

### Usage

1. **Use the Module in Your Main Terraform Configuration:**
   - In your main `main.tf` file (typically located in the root of your project directory),  use the `module` block to reference the `remote_file_upload` module:

   ```hcl
   module "remote_file_upload" {
     source = "./modules/remote_file_upload"

     server_address = "your_server_ip"
     server_username = "your_username"
     server_private_key_path = "~/.ssh/id_rsa"  # Adjust path to your private key
     local_file_path = "path/to/your/local/file.txt"
     remote_file_path = "/home/your_user/uploaded_file.txt"
   }
   ```

   - Replace the placeholder values with your actual configuration details.

2. **Initialize and Apply:**
   - Run `terraform init` in your project directory to initialize Terraform.
   - Run `terraform apply` to execute the configuration and upload the file.


By following these steps and documentation, you can effectively use this Terraform module to automate remote file uploads in your infrastructure management process.
