# IBM COS Multipart Uploads

This is a simple set of bash scripts dealing with multipart uploads with an on-premise IBM COS Solution with S3 Access Key Authentication.  They are designed to run on any IBM COS appliance, but should on any Linux or UNIX-like environment.

After the first use of **_any_** of these scripts a file _.env_ will be created in your current directory.  This file will contain your Access Key ID and Secret Access Key.  Storing these keys to an external file will allow you to use **_any_** of the scripts without having to reenter your keys.  To use different keys, just delete the _s.env_ file and enter the new keys when you run the script again.

* unknown - i don't know what it does yet.

If you run each script without any arguments, you'll get a description of what arguments are needed for the script.

## Requirements

The following commands are required to run these scripts:

* base64
* bash
* curl
* grep
* openssl
* sed

## Tested

* IBM Cloud Object Storage Appliances running 3.18.x.x
  * Vault Mode
* Debian GNU/Linux 11 (Bullseye)

## Not Tested

* IBM Cloud Object Storage Appliances running < 3.18.x.x
* IBM Cloud Object Storage Appliances running 3.18.x.x
  * Container Mode
* Debian GNU/Linux 12 (Bookworm)

## Not Working

These scripts will not work as-is on the following:

* AIX
* Mac OS 10.14.6

## Problems & Troubleshooting

If you have any problems, I recommend the following troubleshooting steps (in order):

1. Download the latest official release.  Its possible what you've pulled or cloned is a set of non-working scripts.  Releases should work.
1. Verify that your local OS has all the required commands
1. If the scripts run without any syntax errors or missing commands and your getting access key errors, the most likely caused by your specific version of openssl.  I've discovered that openssl on Mac OS Mojave generates an incorrect signature which causes access key errors.  If thats the case, your out of luck.  I have not investigated that type of error any further than to discover it doesn't work.  I recommend trying on a different OS.
