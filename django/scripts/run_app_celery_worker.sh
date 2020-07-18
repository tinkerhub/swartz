#!/usr/bin/env bash

cd ./app
celery -A app worker --loglevel=INFO --concurrency=1
