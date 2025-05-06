resource "aws_key_pair" "my_key" {
  key_name   = "tfdemokey"
  public_key = ""   # Replace with your public key
  # Example: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3..."
  # You can generate a key pair using ssh-keygen or any other method
  # and paste the public key here.
}