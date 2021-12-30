#!/bin/sh

cpu() {
	cpu_value=$(grep -o "^[^ ]*" /proc/loadavg)
	printf " $cpu_value"
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
