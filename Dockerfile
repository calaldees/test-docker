FROM python:alpine as base

WORKDIR /test-docker

ENV FOO=bar

COPY requirements.txt ./
RUN pip3 install -r requirements.txt
