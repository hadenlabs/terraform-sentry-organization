package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestBasicSuccess(t *testing.T) {
	t.Parallel()

	name := "test-organization"

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "sentry-organization-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"name": name,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
	outputOrganization := terraform.Output(t, terraformOptions, "instance")
	outputName := terraform.Output(t, terraformOptions, "name")
	assert.NotEmpty(t, outputOrganization, outputOrganization)
	assert.NotEmpty(t, outputName, outputName)
}
