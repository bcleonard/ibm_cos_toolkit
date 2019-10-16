# IBM COS S3 Access Scripts
This is a simple set of bash scripts to access an on-premise IBM COS Solution with S3 Access Key Authentication.  They are designed to run on any IBM COS appliance, but should on any Linux or UNIX-like environment.

* getS3 - script which will download a object from a bucket to a file
* listS3 - script which will list objects in bucket
* putS3 - script which will upload a file to a bucket
* rmS3 - script which will remove an object from a bucket

If you run each script without any arguements, you'll get a desciprtion of what arguements needed for the script.

# Requirements

The following commands are required to run these scripts:

* curl
* base64

## Testing on

* IBM Cloud Object Storage Appliances running 3.14.x.x
* Centos 7.x

## These scripts will not work as-is on the following:

* AIX
* Mac OS 10.14.6
