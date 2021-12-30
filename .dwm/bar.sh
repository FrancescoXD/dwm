#!/bin/bash

cpu() {
	cpu_value=$(grep -o "^[^ ]*" /proc/loadavg)
	printf " $cpu_value"
}

battery() {
	bat_capacity=$(cat /sys/class/power_supply/BAT*/capacity)
	printf " $bat_capacity"
}

memory() {
	printf " $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

clock() {
	printf " $(date '+%a %d %b, %H:%M')"
}

while true; do
	sleep 1 && xsetroot -name "$(memory) $(cpu) $(clock)"
done
