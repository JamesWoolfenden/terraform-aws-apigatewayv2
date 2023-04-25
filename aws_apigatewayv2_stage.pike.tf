resource "aws_apigatewayv2_stage" "pike" {
  api_id = aws_apigatewayv2_api.pike.id
  name   = var.stage_name
  access_log_settings {
    destination_arn = aws_cloudwatch_log_group.pike.arn
    format          = "JSON"
  }
  client_certificate_id = aws_api_gateway_client_certificate.pike.id
}
