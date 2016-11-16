#!/bin/bash
#
# $1 username
# $2 pass
# $3 <service>/<endpoint> 
# 
curl -X POST \
	-H "Content-Type: application/x-www-form-urlencoded" \
	-d "username=$1&password=$2" \
	"$3"