
resource "aws_cloudwatch_log_group" "pike" {
  name              = "API-Gateway-Execution-Logs_${aws_apigatewayv2_api.pike.id}/${var.stage_name}"
  retention_in_days = 7
  kms_key_id        = var.kms_key_id
}
