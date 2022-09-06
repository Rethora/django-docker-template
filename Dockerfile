# syntax=docker/dockerfile:1
FROM ubuntu:focal
RUN apt-get update

FROM python:3.9
ENV PYTHONUNBUFFERED 1

WORKDIR /back-end-print

COPY requirements.txt /back-end-print/
RUN pip install -r requirements.txt
COPY . /back-end-print/
