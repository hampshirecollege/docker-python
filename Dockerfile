FROM python:3.6.4-stretch

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pipenv==11.9.0
