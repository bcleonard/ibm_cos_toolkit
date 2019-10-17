# IBM COS S3 Access Scripts
This is a simple set of bash scripts to access an on-premise IBM COS Solution with S3 Access Key Authentication.  They are designed to run on any IBM COS appliance, but should on any Linux or UNIX-like environment.

* getS3 - script which will download a object from a bucket to a file
* listS3 - script which will list objects in bucket (updated - stores keys in external file for reuse)
* putS3 - script which will upload a file to a bucket (updated - stores keys in external file for reuse)
* rmS3 - script which will remove an object from a bucket (updated - stores keys in external file for reuse)
* files.sh - script which will create and remove ten (10) 100mb files on the local filesystem for use with the above scripts for testing purposes.

If you run each script without any arguments, you'll get a description of what arguments are needed for the script.

# Requirements

The following commands are required to run these scripts:

* base64
* bash
* curl
* grep
* openssl
* sed

### Tested as working on:

* IBM Cloud Object Storage Appliances running 3.14.x.x
* CentOS 7.x

### These scripts will not work as-is on the following:

* AIX
* Mac OS 10.14.6
