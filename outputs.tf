output "instance" {
  description = "output instance sentry organization"
  value       = sentry_organization.this
}

output "id" {
  description = "output id organization"
  value       = sentry_organization.this.id
}
