FROM python:alpine3.16

LABEL maintainer "Henkez <henk.wobbes(at)gmail.com>"

RUN apk add --no-cache \
    libusb-dev \
    openssl \
    libc-dev \
    ca-certificates \
    gcc \
    gnuplot \
    && update-ca-certificates 2>/dev/null || true

RUN pip install --upgrade pip \
    libusb1 \
    tzlocal \
    pycrypto \
    paramiko \
    paho-mqtt \
    croniter \
    python-daemon \
    requests \
    python-twitter \
    oauth2 \
    sphinx \
    pywws

VOLUME ["/var/data"]

CMD ["pywws-livelog","/var/data"]
