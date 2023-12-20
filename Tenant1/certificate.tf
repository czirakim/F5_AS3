resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "tls_self_signed_cert" "example" {
  private_key_pem = tls_private_key.example.private_key_pem  
  subject {
    common_name  = "example.com"
    organization = "ACME Examples, Inc"
    country = "US"
  }

  validity_period_hours =  8766 //1 year

  dns_names = ["example.com", "example.net"]
  

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]

}

