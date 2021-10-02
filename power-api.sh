#!/usr/local/bin/bash

latitude=$1
longitude=$2


if [ $longitude ] && [ $latitude ]; then	
	curl "https://power.larc.nasa.gov/api/temporal/daily/point?parameters=T2M,T2M_RANGE,T2M_MAX,T2M_MIN&community=RE&longitude=$longitude&latitude=$latitude&start=20211002&end=20211002&format="JSON"" > output.json
fi


