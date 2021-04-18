locals {
  defaults = {
    agree_terms = true
  }

  input = {
    agree_terms = try(var.agree_terms, local.defaults.agree_terms)
    name        = var.name
  }

  generated = {
    agree_terms = local.input.agree_terms
    name        = local.input.name
  }

  outputs = {
    agree_terms = local.generated.agree_terms
    name        = local.generated.name
  }
}

# Create an organization
resource "sentry_organization" "this" {
  name        = local.outputs.name
  slug        = var.slug
  agree_terms = local.outputs.agree_terms
}