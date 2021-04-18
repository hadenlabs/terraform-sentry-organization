locals {
  defaults = {
    agree_terms = true
  }

  input = {
    agree_terms = try(var.agree_terms, local.defaults.agree_terms)
  }

  generated = {
    agree_terms = local.input.agree_terms
  }

  outputs = {
    agree_terms = local.generated.agree_terms
  }
}

# Create an organization
resource "sentry_organization" "this" {
  name        = var.name
  slug        = var.slug
  agree_terms = local.outputs.agree_terms
}