#!/usr/bin/env bash

cd ./app
celery -A app beat --loglevel=INFO --scheduler=django_celery_beat.schedulers:DatabaseScheduler
