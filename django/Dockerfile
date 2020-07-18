FROM python:3.7.1-alpine3.8

ENV PYTHONUNBUFFERED=1

RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/requirements.txt
RUN apk update && apk add --no-cache  bash \
                                  postgresql-dev \
                                  g++ \
                                  gcc \
                                  libxslt-dev \
                                  python-dev \
                                  build-base \
                                  py-pip \
                                  jpeg-dev \
                                  libffi-dev \
                                  libxml2-dev \
                                  zlib-dev \
                                  py3-lxml \
                                  && pip install --upgrade pip \
                                  && pip3 install -r requirements.txt


COPY /swartz /code/app/
COPY /scripts /code/scripts/

# Make .sh scripts executable
RUN find ./scripts/ -type f -iname "*.sh" -exec chmod +x {} \;
