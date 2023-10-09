import json
import logging

logger = logging.getLogger()
logger.setLevel(logging.INFO)

def lambda_handler(event, context):
    logging.info(json.dumps(event, indent=2))

    # Extract relevant information from the context object
    context_info = {
        "functionName": context.function_name,
        "functionVersion": context.function_version,
        "invokedFunctionArn": context.invoked_function_arn
    }

    eventObject = {
        "hello": "Hello Python! Hello Terraform!",
        "context": context_info,
        "event": event
    }

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps(eventObject)
    }
