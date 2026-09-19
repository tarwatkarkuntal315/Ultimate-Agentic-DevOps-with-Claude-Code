# ---------------------------------------------------------------------------
# Remote state backend
# ---------------------------------------------------------------------------
#
# Bootstrap order:
#   1. Leave this block commented out and run `terraform init` to use local
#      state for the first apply.
#   2. Run `terraform apply` to create the S3 bucket (and, if you manage it
#      separately, a DynamoDB table for state locking).
#   3. Create (or point to) a dedicated S3 bucket for Terraform state -
#      this should NOT be the same bucket as the website content bucket
#      managed in main.tf.
#   4. Uncomment the `backend "s3"` block below, fill in the bucket/key/region
#      values, then run `terraform init -migrate-state` to move local state
#      into the remote backend.
#
# terraform {
#   backend "s3" {
#     bucket       = "portfolio-site-terraform-state"
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }
