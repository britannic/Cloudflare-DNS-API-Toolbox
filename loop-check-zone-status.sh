#!/bin/bash
# NOTE : This script expects an argument, which should be a filename that contains a list of domains
#        Each domain in that list will be processed one at a time
domainlist=$1

for domain in $(cat $domainlist);do \
	echo "Zone status is "$(./check-zone-status.sh $domain | jq .status)" for domain "$domain ; \
done
