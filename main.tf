#Assuming your module directory is named "remote_file_upload"
module "remote_file_upload" {
  source = "./modules/remote_file_upload"

  server_address = "your_server_ip"
  server_username = "your_username"
  server_private_key_path = "~/.ssh/id_rsa"  # Adjust path to your private key
  local_file_path = "path/to/your/local/file.txt"
  remote_file_path = "/home/your_user/uploaded_file.txt"
}

