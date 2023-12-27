resource "aws_sfn_state_machine" "aft_account_provisioning_customizations" {
  name       = local.name
  role_arn   = aws_iam_role.aft_states.arn
  definition = templatefile("${path.module}/states/customizations.asl.json", {})
}