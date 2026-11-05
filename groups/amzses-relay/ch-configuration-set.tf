resource "aws_sesv2_configuration_set" "ch_configuration_set" {
  configuration_set_name = "ch-configuration-set"
  
  delivery_options {
    sending_pool_name = "ch-managed-ip-pool"
  }
}
