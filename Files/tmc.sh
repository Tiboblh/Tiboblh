#!/bin/sh
I=0
while [ $I -lt 375 ]; do
	sleep 0.48
	/bin/echo -en *CLAP*
	I=`expr $I + 1`
done
