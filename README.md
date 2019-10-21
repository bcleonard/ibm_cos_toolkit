# IBM COS S3 Access Scripts

This is a simple set of bash scripts to access an on-premise IBM COS Solution with S3 Access Key Authentication.  They are designed to run on any IBM COS appliance, but should on any Linux or UNIX-like environment.

After the first use of **_any_** of these scripts a file "*.env*" will be created in your current directory.  This file will contain your Access Key ID and Secret Access Key.  Storing these keys to a a external file will allow you to use **_any_** of the scripts without having to reenter your keys.  To use different keys, just delete the "*.env*" file and enter the new keys when you run the script again.

* getS3 - script which will download a object from a bucket to a file
* listS3 - script which will list objects in bucket
* putS3 - script which will upload a file to a bucket
* rmS3 - script which will remove an object from a bucket
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

### Problems & Troubleshooting

If you have any problems, I recommend the following troubleshooting steps (in order):

1.  Download the latest official release.  Its possible what you've pulled or cloned is a set of non-working scripts.  Releases should work.
2.  Verify that your local OS has all the required commands
3.  If the scripts run without any syntax errors or missing commands and your getting access key errors, the most likely caused by your specific version of openssl.  I've discovered that openssl on Mac OS Mojave generantes an incorrect signature which causes access key errors.  If thats the case, your out of luck.  I have not investigated that type of error any further than to discover it doesn't work.  I recommmend trying on a different OS.


