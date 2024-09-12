#!/bin/bash

echo "Please an option what u want to do:"
echo "1 for logs"
echo "2 for cpu usage"
echo "3 for storage info"

read choice

case "$choice" in
  1)
    cat /var/log/syslog
    ;;
  2)
    mpstat
    ;;
  3)
    df -h
    ;;
esac