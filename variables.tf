variable "kms_decrypted_data_lookup" {
  description = <<EOT
Map of kms_decrypted_data_lookup, attributes below
Required:
    - ciphertext
    - crypto_endpoint
    - key_id
Optional:
    - associated_data
EOT

  type = map(object({
    ciphertext      = string
    crypto_endpoint = string
    key_id          = string
    associated_data = optional(map(string))
  }))
}

