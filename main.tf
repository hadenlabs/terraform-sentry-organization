locals {
  defaults = {
    agree_terms = true
  }

  input = {
    agree_terms = try(var.agree_terms, local.defaults.agree_terms)
    name        = var.name
    teams       = var.teams
  }

  generated = {
    agree_terms = local.input.agree_terms
    name        = local.input.name
    teams       = local.input.teams
  }

  outputs = {
    agree_terms = local.generated.agree_terms
    name        = local.generated.name
    teams       = local.generated.teams
  }
}

# Create an organization
resource "sentry_organization" "this" {
  name        = local.outputs.name
  slug        = var.slug
  agree_terms = local.outputs.agree_terms
}

resource "sentry_team" "this" {
  depends_on   = [sentry_organization.this]
  count        = length(var.teams)
  organization = sentry_organization.this.slug
  name         = lookup(local.outputs.teams[count.index], "name")
  slug         = lookup(local.outputs.teams[count.index], "slug", null)

  lifecycle {
    create_before_destroy = true
  }
}