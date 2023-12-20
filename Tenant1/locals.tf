locals {
  cert = base64encode(tls_self_signed_cert.example.cert_pem)
  key = base64encode(tls_private_key.example.private_key_pem)
}
