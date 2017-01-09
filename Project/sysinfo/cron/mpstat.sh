#!/bin/bash
mpstat -P ALL | tail -n+4  | sed -e 's/,/\./' > /tmp/sysinfo/mpstat/$2
let "n = 60 / $1"
sleep $n
