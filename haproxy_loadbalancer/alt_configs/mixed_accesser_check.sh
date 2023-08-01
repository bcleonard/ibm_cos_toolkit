#!/bin/bash

VSIP=$1 # Virtual Service IP (VIP)
VSP=$2 # Virtual Service Port (VPT)
RSIP=$3 # Real Server IP (RIP)
RSP=$4 # Real Server Port (RPT) 
CSIP=$5 # Check Source IP 
SERVICE_API_PORT=8337

CURL=/usr/bin/curl
GREP=/bin/grep

if [[ "${RSP}" -eq 80 ]] && [[ "${HAPROXY_PROXY_NAME}" == *"container"* ]]
then
  PORT_TYPE="http"
  SERVICE_API_PORT="8337"
elif [[ "${RSP}" -eq 80 ]] && [[ "${HAPROXY_PROXY_NAME}" == *"vault"* ]]
then
  PORT_TYPE="http"
  SERVICE_API_PORT="80"
elif [[ "${RSP}" -eq 443 ]] && [[ "${HAPROXY_PROXY_NAME}" == *"container"* ]]
then
  PORT_TYPE="https"
  SERVICE_API_PORT="8338"
elif [[ "${RSP}" -eq 443 ]] && [[ "${HAPROXY_PROXY_NAME}" == *"vault"* ]]
then
  PORT_TYPE="https"
  SERVICE_API_PORT="443"
fi

echo "checking ${PORT_TYPE}://${RSIP}:${SERVICE_API_PORT} ${HAPROXY_PROXY_NAME}"
${CURL} -k -s ${PORT_TYPE}://${RSIP}:${SERVICE_API_PORT}/status | ${GREP} online | ${GREP} true > /dev/null 2>&1
exit $?

