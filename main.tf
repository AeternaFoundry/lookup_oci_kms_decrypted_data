data "oci_kms_decrypted_data" "kms_decrypted_data_lookup" {
  for_each = var.kms_decrypted_data_lookup

  ciphertext      = each.value.ciphertext
  crypto_endpoint = each.value.crypto_endpoint
  key_id          = each.value.key_id
  associated_data = each.value.associated_data
}

