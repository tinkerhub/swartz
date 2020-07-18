#!/usr/bin/env bash

prepare_dir() {
	echo "Test for Required Directories."
	echo "Checking if logs Directory exist. If not create one."
	mkdir -p /logs/django/development/
	mkdir -p /logs/django/error/
	mkdir -p /logs/django/access/
	# to notify django to log in above directory
	export LOG_DIR=True
	echo "Required Directories exist."
}
