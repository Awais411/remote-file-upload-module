resource "null_resource" "file_upload" {
  name = "upload_file"

  triggers {
    name = always()
  }

  provisioner "file" {
    source      = var.local_file_path
    destination = var.remote_file_path

    connection {
      type       = "ssh"
      host       = var.server_address
      user       = var.server_username
      private_key = file(var.server_private_key_path)
    }
  }
}
