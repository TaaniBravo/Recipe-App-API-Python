FROM python:3.9.5-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt  /requirements.txt
RUN pip install -r /requirements.txt
RUN pip install flake8

RUN mkdir /app
WORKDIR /app
COPY ./app /app/

RUN adduser -D user
USER user
