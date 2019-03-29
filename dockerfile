FROM alpine:latest

LABEL maintainer "Henk <henk@wobbes.net>"

RUN apk add --no-cache python3 \
    libusb \
    python3-dev \
    py3-cffi \
    py3-pytest \
    py3-cryptography \
    py3-paramiko \
    openssl \
    libc-dev \
    ca-certificates \
    gcc \
    gnuplot \
    && update-ca-certificates

RUN pip3 install --upgrade pip

RUN pip3 install \
    libusb1 \
    tzlocal \
    pycrypto \
    paho-mqtt \
    croniter \
    python-daemon \
    requests \
    python-twitter \
    oauth2 \
    pywws

VOLUME ["/var/data"]

