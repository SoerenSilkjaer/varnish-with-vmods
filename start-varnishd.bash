#!/bin/bash
set -e

mkdir -p /etc/varnish

exec varnishd 				\
	-F 				\
	-f /etc/varnish/default.vcl 	\
	-s ${VARNISH_STORAGE_BACKEND} 	\
	-a 0.0.0.0:${VARNISH_PORT}
