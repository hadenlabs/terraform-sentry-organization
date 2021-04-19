output "instance" {
  description = "output instance sentry organization"
  value       = sentry_organization.this
}

output "id" {
  description = "output id organization"
  value       = sentry_organization.this.id
}

output "name" {
  description = "output name organization"
  value       = local.outputs.name
}

output "slug" {
  description = "output slug organization"
  value       = sentry_organization.this.slug
}
