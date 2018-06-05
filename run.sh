#!/bin/bash
if [ -z "$PROM_PORT" ]; then
      PROM_PORT=9103
fi

sed -i "s/PROM_PORT/$PROM_PORT/g" etc/collectd.conf
/usr/sbin/collectd -f
