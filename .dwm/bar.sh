#!/bin/sh

battery_status() {
	percentage=$(acpi -V | grep "arging" | cut -d "," -f 1,2)
	printf " $percentage%"
}

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
	sleep 1 && xsetroot -name "$(battery_status) $(memory) $(cpu) $(clock)"
done
