#!/bin/bash
  
string=$(free -m | grep Mem)
used=$(echo $string | awk '{print $3}')
shared=$(echo $string | awk '{print $5}')
total=$(echo $string | awk '{print $2}')
occupied=$(echo $used + $shared | bc)

i3status | while :
do
	read line
	echo -e "$occupied / $total MiB | $line" || exit
done
