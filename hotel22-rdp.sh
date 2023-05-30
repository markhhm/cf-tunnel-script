#!/bin/sh
# Check if one argument is passed
if [ $# -ne 1 ]; then
	echo "Usage: $0 start|stop"
	exit 1
fi

# Assign argument to variable
arg="$1"
domain="YOUR TUNNEL DOMAIN"
local_forwarded_port="THE PORT YOUR WANT TO FORWARD"

if [ "$arg" == "start" ]; then
	# access cf tunnel
	cloudflared access rdp --hostname $domain --url localhost:$local_forwarded_port &
elif [ "$arg" == "stop" ]; then
	# kill cf tunnel process
	kill $(ps aux | grep -v grep | grep $domain | awk '{print $2}')
else
	echo "Invalid argument. Usage: $0 start|stop"
	exit 1
fi
