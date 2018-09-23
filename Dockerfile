FROM python:3.6.6-stretch

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
        apache2 \
        apache2-dev \
        python3-dev \
        libapache2-mod-shib2 \
        libapache2-mod-wsgi-py3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pipenv==11.9.0

CMD ["python"]
