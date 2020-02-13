# Simple, basic HAproxy Loadbalancer

This is the configuration file for haproxy which, when running, will provide you with a very basic loadbalancer for use in front of Accessers.  This configuration will only provide support over port 443 (https) and not port 80 (http).  This configuration will pass through all SSL connections.  It will not intercept and/or modify SSL connections.

This is providing as proof-of-concept configuration to assist with testing feature/functionality.  It is not designed for use in production.

# Requirements/Prerequisites

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)

# Install

* Download the tooklit
* Move the haproxy.cfg and docker-compose.yml to your preferred location

# Configure

* Modify the haproxy.cfg file, changing the server entries at the bottom of the file to match the accessers in your environment.

# Run

* from the command line, run the following:

```bash
docker-compose up -d
```

### Tested as working on:

* IBM Cloud Object Storage Appliances running 3.14.x.x
* Docker running on CentOS 7.x

