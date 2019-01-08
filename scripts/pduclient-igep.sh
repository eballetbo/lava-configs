#!/usr/bin/env bash

# telnet localhost 2001

case "$1" in
    "on" | "off" | "reboot")
	pduclient -H --daemon localhost --hostname pdu01 --command $1 --port 01
        ;;
    *)
        echo "Usage: $0 {on|off|reboot}"
	exit 1
esac

