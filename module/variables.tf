variable "server_address" {
  type = string
  description = "IP address or hostname of the remote server"
}

variable "server_username" {
  type = string
  description = "Username for authentication on the remote server"
}

variable "server_private_key_path" {
  type = string
  description = "Path to the private key file for SSH authentication"
}

variable "local_file_path" {
  type = string
  description = "Path to the local file you want to upload"
}

variable "remote_file_path" {
  type = string
  description = "Path on the remote server where the file should be uploaded"
}
