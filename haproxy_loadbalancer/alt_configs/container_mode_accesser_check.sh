#!/bin/bash

VSIP=$1 # Virtual Service IP (VIP)
VSP=$2 # Virtual Service Port (VPT)
RSIP=$3 # Real Server IP (RIP)
RSP=$4 # Real Server Port (RPT) 
CSIP=$5 # Check Source IP 
CM_PORT_HTTP=8337
CM_PORT_HTTPS=8338
PORT_TYPE=http

CURL=/usr/bin/curl
GREP=/bin/grep

# for container mode, you need to check the service ports for non-ssl and ssl
if [[ "${RSP}" -eq 80 ]]
then
  PORT_TYPE="http"
  RSP=${CM_PORT_HTTP}
elif [[ "${RSP}" -eq 443 ]]
then
  PORT_TYPE="https"
  RSP=${CM_PORT_HTTPS}
fi

echo "checking ${PORT_TYPE}:${RSIP}:${RSP}"
${CURL} -k -s ${PORT_TYPE}://${RSIP}:${RSP}/status | ${GREP} online | ${GREP} true > /dev/null 2>&1
exit $?

