import boto3

# Crea un cliente de S3
s3_client = boto3.client('s3')

# Lista todos los buckets de S3
response = s3_client.list_buckets()

# Imprime los nombres de los buckets
print("Buckets de S3:")
for bucket in response['Buckets']:
    print(f" - {bucket['Name']}")