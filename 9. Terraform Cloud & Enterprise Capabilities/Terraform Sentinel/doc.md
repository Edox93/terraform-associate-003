# Its a paid service for plicies in HCP
like disalow 0.0.0.0/0 to run and push.
FOr that you can enable free trial plan in HCP

Example rule
package terraform.policies.restrict_public_ingress

import "tfplan"

main = rule {
  all tfplan.resources.aws_security_group as _, sg {
    all sg.applied.ingress as ingress {
      ingress.cidr_blocks not contains "0.0.0.0/0"
    }
  }
}
