#!bin/bash

echo "===== System Health Check ====="

echo "CPU usage"
top -bn1 | grep "CPU"
echo " "

echo "Memory Usage"
free -h
echo " "

echo "Disk Usage"
df -h
echo " "

echo "Logged in users"
who
echo " "

echo "==== Health Check $(date '+%Y-%m-%d %H:%M-%S') ===="
free -h >> health_log.txt
df -h >> health_log.txt
echo "Log Saved"

