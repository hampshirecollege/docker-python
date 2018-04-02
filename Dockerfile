FROM python:3.6.4-stretch

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pipenv==11.9.0

CMD ["python"]
