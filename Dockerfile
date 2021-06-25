# syntax=docker/dockerfile:1
FROM ubuntu:20.04

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

##Install pip3

RUN set -xe \
    && apt-get update -y \
    && apt-get install -y python3-pip

#RUN echo pip3 --version

RUN pip3 install -r requirements.txt

COPY . /app

WORKDIR /app/

CMD ["python3", "main.py"]

#EXPOSE 5000
