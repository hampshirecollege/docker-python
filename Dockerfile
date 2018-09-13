FROM python:3.7-stretch

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
        apache2 \
        apache2-dev \
        libapache2-mod-shib2 \
        libapache2-mod-wsgi-py3 \
        libc-dev-bin \
        libc6-dev \
        libc6-dev-i386 \
        libc6-i386 \
        linux-libc-dev \
        python3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pipenv

CMD ["python"]
