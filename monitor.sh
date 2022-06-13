#!/bin/bash

#this script is to monitor the system status

echo  'Please select which parameter you would like to monitor :' \
            '1. CPU utilization' \
            '2. Memory utilization' \
            '3. Disk Space' \
            '4. uptime ' \
            '5. loadavg'
echo "Please Enter the Number"
read N
echo

case $N in
  1)
  which iostat &>>/dev/null
  if [ $? -eq 0 ]; then
    echo -e "\e[0;32mCPU utilization is :\e[0m"
    iostat | sed -n '3,4p'
  else
    which yum &>>/dev/null
    if [ $? -eq 0 ]; then
    yum install sysstat -y &>>/dev/null
    else
    apt install sysstat -y &>>/dev/null
    fi
   iostat | sed -n '3,4p'
  fi
  ;;
  2)
  echo -e "\e[0;32mMemory Status\e[0m"
  echo -e "\e[0;32mTotal Free Used\e[0m"
  free -th | grep Total | awk '{print $2,$4,$3}'
  ;;
  3)
  echo -e "\e[0;32mMemory Utilization\e[0m"
  df -h
  ;;
  4)
  echo -e "\e[0;32mTotal Uptime is \e[0m"
  uptime | cut -d " " -f 4-6
  ;;
  5)
  echo -e "\e[0;32m LOAD AVG     1Min 5Min 15Min\e[0m"
  uptime | rev | awk '{ print $1,$2,$3,$4,$5 }' | rev
  ;;
  *)
  echo "Please enter valid Number to check in 1 2 3 4 5 "
  bash monitor.sh
  ;;
esac

