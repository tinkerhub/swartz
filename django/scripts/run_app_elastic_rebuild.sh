#!/usr/bin/env bash

source $(dirname "$0")/prepare_environment.sh

# Prepares directory for logs
prepare_dir;
python swartz/manage.py rebuild_index --noinput
