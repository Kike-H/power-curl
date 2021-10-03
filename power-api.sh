#!/usr/local/bin/bash

latitude=$1
longitude=$2


if [ $longitude ] && [ $latitude ]; then	
	curl "https://power.larc.nasa.gov/api/temporal/daily/point?parameters=T2M,T2M_RANGE,T2M_MAX,T2M_MIN,ALLSKY_SFC_SW_DWN,ALLSKY_KT&community=RE&longitude=$longitude&latitude=$latitude&start=20201001&end=20201001&format="JSON"" > output.json
fi


