resource "aws_apigatewayv2_api" "pike" {
  name                       = var.name
  protocol_type              = "WEBSOCKET"
  route_selection_expression = "$request.body.action"
}

