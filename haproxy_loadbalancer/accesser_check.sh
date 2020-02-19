#!/bin/bash

VSIP=$1 # Virtual Service IP (VIP)
VSP=$2 # Virtual Service Port (VPT)
RSIP=$3 # Real Server IP (RIP)
RSP=$4 # Real Server Port (RPT) 
CSIP=$5 # Check Source IP 

CURL=/usr/bin/curl
GREP=/bin/grep

echo "checking ${RSIP}"
${CURL} -s http://${RSIP}/status | ${GREP} online | ${GREP} true > /dev/null 2>&1
exit $?

