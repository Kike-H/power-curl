# API POWER NASA
This a few example to know how to use the api of [NASA POWER](https://power.larc.nasa.gov/docs/)

## How to execute 

For this example you need to to install [curl](https://curl.se/) 

Execute this:

> Change latitude and longitude for your cords

```bash
./power-api.sh latitude longitude
```

Example:

```bash
./power-api.sh 5 10
```

## Output
```json
{
  "type": "Feature",
  "geometry": { "type": "Point", "coordinates": [10.0, 5.0, 776.92] },
  "properties": {
    "parameter": {
      "T2M": { "20211002": -999.0 },
      "T2M_RANGE": { "20211002": -999.0 },
      "T2M_MAX": { "20211002": -999.0 },
      "T2M_MIN": { "20211002": -999.0 }
    }
  },
  "header": {
    "title": "NASA/POWER CERES/MERRA2 Native Resolution Daily Data",
    "api": { "version": "v2.2.9", "name": "POWER Daily API" },
    "fill_value": -999.0,
    "start": "20211002",
    "end": "20211002"
  },
  "messages": [],
  "parameters": {
    "T2M": { "units": "C", "longname": "Temperature at 2 Meters" },
    "T2M_RANGE": { "units": "C", "longname": "Temperature at 2 Meters Range" },
    "T2M_MAX": { "units": "C", "longname": "Temperature at 2 Meters Maximum" },
    "T2M_MIN": { "units": "C", "longname": "Temperature at 2 Meters Minimum" }
  },
  "times": { "data": 2.386, "process": 0.02 }
}
```

## About the API 

- Base URL
https://power.larc.nasa.gov/api/temporal/daily/point?

> This the main path the API

- Parameters
parameters=T2M,T2M_RANGE,T2M_MAX,T2M_MIN&

> This part you need to put parameters that you want to get

- Cords 
community=RE&longitude=$longitude&latitude=$latitude&

> This part you need to put the cords of the place that to u want to get the data

- Range of dates 
start=20210101&end=20211002&

> The range of dates the you want to get the data

- Format
format="JSON"

> And the format of the output

