#!/usr/bin/env bash

cd ./app
celery -A app worker --loglevel=INFO --concurrency=1 -B --scheduler=django_celery_beat.schedulers:DatabaseScheduler
