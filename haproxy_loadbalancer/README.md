# Simple, basic HAproxy Loadbalancer

This is the configuration file for haproxy which, when running, will provide you with a very basic loadbalancer for use in front of Accessers.  This configuration will only provide support over port 443 (https) and not port 80 (http).  This configuration will pass through all SSL connections.  It will not intercept and/or modify SSL connections.

This configuration uses an external check with the script accesser_check.sh.

This is providing as proof-of-concept configuration to assist with testing feature/functionality.  It is not designed for use in production.

# Requirements/Prerequisites

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* internet connection

# Install

* Download the tooklit
* Move the following files to your preferred location:  
   haproxy.cfg  
   docker-compose.yml  
   Dockfile  
   accesser_check.sh  

# Configure

* Modify the haproxy.cfg file, changing the server entries at the bottom of the file to match the accessers in your environment.

# Run

* from the command line, run the following:

```bash
docker-compose up -d
```

This will download the latest version of the haproxy docker container, add the "curl" package to it and start it up.

### Tested as working on:

* IBM Cloud Object Storage Appliances running 3.14.x.x
* Docker running on CentOS 7.x
* Internet Connection (to download haproxy docker container and add curl package)

