#!/usr/bin/env bash

cd ./swartz
celery -A swartz beat --loglevel=INFO --scheduler=django_celery_beat.schedulers:DatabaseScheduler
