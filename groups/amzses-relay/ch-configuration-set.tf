resource "aws_ses_configuration_set" "ch_configuration_set" {
  name = "ch-configuration-set"
  
  delivery_options {
    sending_pool_name = "ch-managed-ip-pool"
  }
}
