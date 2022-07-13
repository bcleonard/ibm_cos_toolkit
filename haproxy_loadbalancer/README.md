# Simple, basic HAproxy Loadbalancer

This configuration file enhances haproxy by:
- Providing a very basic loadbalancer for use in front of Accessers.
- Supporting over port 443 (https) and not port 80(http). 
- Passing through all SSL connections without intercepting or modifying them.

This configuration uses an external check with the script accesser_check.sh.

**NOTICE:  This provides a proof-of-concept configuration.  The configuration assists with testing feature/functionality.  It is not designed for production.**



## Requirements/Prerequisites

* IBM Cloud Object Storage Appliances
* [Docker](https://www.docker.com/)
* [Docker Compose]
* Internet connection

## Tested for
- IBM Cloud Object Storage Appliances running 3.14.x.x
- Docker running on CentOS 7.x
- Internet Connection (to download haproxy docker container and add curl package)

## Install

1. Download the tooklit
2. Move the following files to your preferred location:  
	- haproxy.cfg
	- docker-compose.yml  
	- Dockfile  
	- accesser_check.sh  

## Configure

1. Modify the haproxy.cfg file: 
	- Change the server entries(at the bottom of the file) to match the accessers in your environment.

## Run

1. Download the latest version of the haproxy docker container
	- Run the following from the command line:

		```docker-compose up -d ```
	- Add the "curl" package 
	- Start up Docker


