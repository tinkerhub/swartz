#!/usr/bin/env bash

cd ./swartz
celery -A swartz worker --loglevel=INFO --concurrency=1
