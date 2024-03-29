#!/bin/bash

VSIP=$1 # Virtual Service IP (VIP)
VSP=$2 # Virtual Service Port (VPT)
RSIP=$3 # Real Server IP (RIP)
RSP=$4 # Real Server Port (RPT) 
CSIP=$5 # Check Source IP 
PORT_TYPE=http

CURL=/usr/bin/curl
GREP=/bin/grep

# for a ssl connection you need to check the status via secure port
if [[ "${RSP}" -eq 80 ]]
then
  PORT_TYPE="http"
elif [[ "${RSP}" -eq 443 ]]
then
  PORT_TYPE="https"
fi

echo "checking ${PORT_TYPE}:${RSIP}:${RSP}"
${CURL} -k -s ${PORT_TYPE}://${RSIP}:${RSP}/status | ${GREP} online | ${GREP} true > /dev/null 2>&1
exit $?

