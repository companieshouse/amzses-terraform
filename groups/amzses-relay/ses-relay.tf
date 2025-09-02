#SES Domain
resource "aws_ses_domain_identity" "email_relay" {
  domain = var.domain
}

# SES dkim
resource "aws_ses_domain_dkim" "email_relay" {
  domain = "${aws_ses_domain_identity.email_relay.domain}"
}

