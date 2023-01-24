# Alternate HA Proxy configurations

* vip_haproxy.cfg - will allow pass to various backends based on a virtual hostname.   very usefull for test / non productions environments.   This example configuration will allow you proxy to an access pool in vault mode & container mode based on virtual hostnames from the same haproxy instance.