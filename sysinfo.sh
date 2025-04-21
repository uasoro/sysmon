#!/bin/bash
# 0.1.1 by uasoro

echo -e "\n \e[36m===================\n =   system info   =\n ===================\e[0m\n"

echo -e "\e[33m| uptime:\e[0m $(uptime -p | sed 's/up //')"
echo -e "\e[33m| cpu: \e[0m   $(top -bn1 | grep "%Cpu(s)" | awk '{print $2 + $4 "%"}')   |   $(cat /sys/class/thermal/thermal_zone*/temp | awk '{print $1 / 1000 "°C"}') "
echo -e "\e[33m| external IP: \e[0m $(curl -s --max-time 3 ifconfig.me || echo "Disconnect")"
echo -e "\e[33m| ram:\e[0m $(free -m | awk '/Mem:/ {printf "%.1f%% (%d/%d MB)", ($3/$2)*100, $3, $2}')"
echo -e "\e[33m| user:\e[0m $(whoami)"

echo -e "\n\n"
echo "      |\      _,,,---,,_"
echo " ZZz  /,'.-'``     -.  ; -;;,_"
echo "     |,4-  ) )-,_. ,\ (  ``'-'"
echo "    '---''(_/--'  '- '\_)"
echo -e "\n\n"