package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestOutputTeamsSuccess(t *testing.T) {
	t.Parallel()

	name := "test-organization"
	teams := []map[string]interface{}{
		{
			"name": "team1",
		},
		{
			"name": "team2",
		},
	}

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "sentry-organization-output-teams",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"name":  name,
			"teams": teams,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
	outputOrganization := terraform.Output(t, terraformOptions, "instance")
	outputName := terraform.Output(t, terraformOptions, "name")
	outputTeams := terraform.Output(t, terraformOptions, "teams")
	assert.NotEmpty(t, outputOrganization, outputOrganization)
	assert.NotEmpty(t, outputName, outputName)
	assert.NotEmpty(t, outputTeams, outputTeams)
}
