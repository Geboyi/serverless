# Lambda Function
output "lambda_function_arn" {
  description = "The ARN of the Lambda Function"
  value       = module.lambda_function.lambda_function_arn
}

output "lambda_function_invoke_arn" {
  description = "The Invoke ARN of the Lambda Function"
  value       = module.lambda_function.lambda_function_invoke_arn
}

output "lambda_function_name" {
  description = "The name of the Lambda Function"
  value       = module.lambda_function.lambda_function_name
}

output "lambda_function_qualified_arn" {
  description = "The ARN identifying your Lambda Function Version"
  value       = module.lambda_function.lambda_function_qualified_arn
}

output "lambda_function_version" {
  description = "Latest published version of Lambda Function"
  value       = module.lambda_function.lambda_function_version
}

# IAM Role of Lambda Function
output "lambda_role_arn" {
  description = "The ARN of the IAM role created for the Lambda Function"
  value       = module.lambda_function.lambda_role_arn
}

# EventBridge
output "eventbridge_rule_arns" {
  description = "The EventBridge Rule ARNs"
  value       = module.eventbridge.eventbridge_rule_arns
}
