resource "aws_apigatewayv2_route" "pike" {
  api_id             = aws_apigatewayv2_api.pike.id
  route_key          = "$default"
  authorization_type = var.authorization_type
}

