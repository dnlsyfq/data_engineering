FROM python:3.9

RUN pip install pandas

WORKDIR /app
COPY pipeline.py pipeline.py

# start docker run with bash
# ENTRYPOINT ["bash"]  

# start docker run with python
ENTRYPOINT ["python","pipeline.py"]

# start docker run with argument
# docker build -t test:pandas .
# docker run -it test:pandas 2021-01-15
