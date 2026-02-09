import json

def lambda_handler(event, context):
    print("File uploaded:", json.dumps(event))
    return {
        'statusCode': 200,
        'body': 'Processed'
    }
