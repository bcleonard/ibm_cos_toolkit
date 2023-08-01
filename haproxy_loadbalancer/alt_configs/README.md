# Alternate HA Proxy configurations

* container_mode_accesser_check.sh - a drop in replacement for the accesser_check.sh script.   When a IBM COS solution is in container mode, instead of checking 80/443 for the availability of the accessers, you need to check 8337/8338 (Service ports) for availability.
* mixed mode - files for a solution running both container mode / standard mode.  this implemetation relies a virtual hostname for standard mode connections and one for container mode connections.
** mixed_haproxy.cfg - defines muliple back ends for standard and container mode.   utilizes the accompaning accesser_check.sh script
** mixed_accssser_check.sh - this relies on the accompaning haproxy.cfg, the two virtual hostnames and the predefined backends in the haproxy.cfg
* vip_haproxy.cfg - will allow pass to various backends based on a virtual hostname.   very usefull for test / non productions environments.   This example configuration will allow you proxy to an access pool in vault mode & container mode based on virtual hostnames from the same haproxy instance.
