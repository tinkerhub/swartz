#!/usr/bin/env bash

cd ./swartz
celery -A swartz worker --loglevel=INFO --concurrency=1 -B --scheduler=django_celery_beat.schedulers:DatabaseScheduler
