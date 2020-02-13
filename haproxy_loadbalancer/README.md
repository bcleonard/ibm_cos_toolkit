# Simple, basic HAproxy Loadbalancer

This is the configuration file for haproxy which, when running, will provide you with a very basic loadbalancer for use in front of Accessers.

This is providing as proof-of-concept configuration to assist with testing feature/functionality.  It is not designed for use in production.

# Requirements/Prerequisites

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)

# Install

* download the tooklit
* move the haproxy.cfg and docker-compose.yml to your preferred location

# Configure

* modify the haproxy.cfg file, changing the server entried at the bottom of the file to match the accessers in your environment

# Run

* from the command line, run the following:

```bash
docker-compose up -d
```

### Tested as working on:

* IBM Cloud Object Storage Appliances running 3.14.x.x
* Docker running on CentOS 7.x

