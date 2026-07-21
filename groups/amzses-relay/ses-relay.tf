#SES Domain CH
resource "aws_ses_domain_identity" "email_relay" {
  domain = var.domain
}

# SES dkim CH 
resource "aws_ses_domain_dkim" "email_relay" {
  domain = aws_ses_domain_identity.email_relay.domain
}

#SES Domain IPO
resource "aws_ses_domain_identity" "email_relay_ipo" {
  count = var.enable_ipo ? 1 : 0

  domain = var.domain_ipo
}

# SES dkim IPO
resource "aws_ses_domain_dkim" "email_relay_ipo" {
  count = var.enable_ipo ? 1 : 0

  domain = aws_ses_domain_identity.email_relay_ipo[count.index].domain
}

# SES MAIL_FROM
resource "aws_ses_domain_mail_from" "ch_email_from" {
  domain           = var.domain
  mail_from_domain = "${var.subdomain}.${aws_ses_domain_identity.email_relay.domain}"
}
