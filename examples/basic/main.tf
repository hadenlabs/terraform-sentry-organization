module "main" {
  source      = "git://github.com/hadenlabs/terraform-sentry-organization.git?ref=0.1.0"
  name        = var.name
  slug        = var.slug
  agree_terms = var.agree_terms
}
