# output "private_key_pem_base64" {
#   value     = base64encode(tls_private_key.ssh_key.private_key_pem)
#   sensitive = true
# }


output "public_ips" {
  description = "Public IPs of the EC2 instances"
  value = {
    nginx  = aws_instance.nginx.public_ip
    apache = aws_instance.apache.public_ip
    mysql  = aws_instance.mysql.public_ip
  }
}

