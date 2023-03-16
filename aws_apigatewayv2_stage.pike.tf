resource "aws_apigatewayv2_stage" "pike" {
  api_id = aws_apigatewayv2_api.pike.id
  name   = var.stage_name
  access_log_settings {
    destination_arn = aws_cloudwatch_log_group.pike.arn
    format          = "JSON"
  }
  client_certificate_id = aws_api_gateway_client_certificate.pike.id
}


resource "aws_cloudwatch_log_group" "pike" {
  name              = "API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.api.id}/${var.stage_name}"
  retention_in_days = 7
  kms_key_id        = var.kms_key_id
}
