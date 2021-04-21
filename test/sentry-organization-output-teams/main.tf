module "main" {
  source      = "../.."
  name        = var.name
  slug        = var.slug
  agree_terms = var.agree_terms
  teams       = var.teams
}
