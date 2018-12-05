#!/bin/bash
exec varnishd \
    -F \
    -f ${VARNISH_CONFIG} \
    -s malloc,${VARNISH_STORAGE} \
    -a ${VARNISH_LISTEN} \
    -T localhost:${VARNISH_MANAGEMENT_LISTEN} \
    ${VARNISH_DAEMON_OPTS}

