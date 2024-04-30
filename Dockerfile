FROM python:3.10-slim-buster

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY req.txt /app/
RUN pip install --no-cache-dir -r req.txt

COPY . /app/