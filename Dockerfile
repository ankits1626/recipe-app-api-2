#Enviornment
FROM python:3.7-alpine

#Maintainer
MAINTAINER Ankit Sachan

#python unbuffered

ENV PYTHONUNBUFFERED 1

#requirements.txt

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

#App directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# user
RUN adduser -D user
USER user
