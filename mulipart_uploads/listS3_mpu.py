#!/usr/bin/python3

import boto3
from botocore.exceptions import NoCredentialsError, PartialCredentialsError

def list_incomplete_multipart_uploads(bucket_name, region_name, endpoint_url, aws_access_key_id, aws_secret_access_key):
    s3 = boto3.client('s3', 
                      region_name=region_name, 
                      endpoint_url=endpoint_url,
                      aws_access_key_id=aws_access_key_id,
                      aws_secret_access_key=aws_secret_access_key)
    try:
        # Initialize the paginator for list_multipart_uploads
        paginator = s3.get_paginator('list_multipart_uploads')
        page_iterator = paginator.paginate(Bucket=bucket_name)

        incomplete_uploads = []

        # Iterate through each page of multipart uploads
        for page in page_iterator:
            if 'Uploads' in page:
                for upload in page['Uploads']:
                    upload_info = {
                        'Key': upload['Key'],
                        'UploadId': upload['UploadId'],
                        'Initiated': upload['Initiated']
                    }
                    incomplete_uploads.append(upload_info)
        
        return incomplete_uploads

    except NoCredentialsError:
        print("Error: No AWS credentials found.")
        return []
    except PartialCredentialsError:
        print("Error: Incomplete AWS credentials found.")
        return []
    except Exception as e:
        print(f"An error occurred: {e}")
        return []

# Replace 'your-bucket-name' and 'your-region-name' with your actual S3 bucket name and region
bucket_name = 'bcl_test_02'
region_name = 'my-region-name'
endpoint_url = 'https://icoslbvm.internal.stygianresearch.com'
aws_access_key_id = 'TteVeJjF4jUPPWv75oe5'
aws_secret_access_key = 'jDb1AWAxnEIID223nTQOe9vltUdYCDsFH8EpSRA9'

uploads = list_incomplete_multipart_uploads(bucket_name, region_name, endpoint_url, aws_access_key_id, aws_secret_access_key)

if uploads:
    print("Incomplete multipart uploads:")
    for upload in uploads:
        print(f"Key: {upload['Key']}, UploadId: {upload['UploadId']}, Initiated: {upload['Initiated']}")
else:
    print("No incomplete multipart uploads found.")
