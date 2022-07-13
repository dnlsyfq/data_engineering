### Docker PreBuild Image

```
docker run -it ubuntu bash
exit

// docker run -it <image name> <command>
// -it interative terminnal

```
```
docker run -it python:3.9
ctrl+d
docker run -it --entrypoint=bash python:3.9
pip install pandas
```

### Create Docker Image


```
// Dockerfile
FROM python:3.9

RUN pip install pandas

ENTRYPOINT ["bash"]
```

build image
```
docker build -t test:pandas .
```

run image
```
docker run -it test:pandas 
```

### Create Docker File 

```
FROM python:3.9

RUN pip install pandas

WORKDIR /app
COPY pipeline.py pipeline.py

# start docker run with bash
# ENTRYPOINT ["bash"]  

# start docker run with python
ENTRYPOINT ["python","pipeline.py"]
```

* Run Dockerfile with argument
```
docker build -t test:pandas .
docker run -it test:pandas 2021-01-15
```

## Postgres

* run at host
```
docker run -it \
-e POSTGRES_USER="root" \
-e POSTGRES_PASSWORD="root" \
-e POSTGRES_DB="ny_taxi" \
-v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
-p 5432:5432 \
postgres:13
```

* run at host
```
pip install pgcli
pgcli -h localhost -p 5432 -u root -d ny_taxi
\dt
\d yellow_taxi_data
```


* Download csv
```
wget https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2021-01.csv 
```