#!/usr/bin/env bash

arg_count=$#

if [ $arg_count -eq 1 ]; then
	echo "Hello, $*"
else
	echo "Usage: error_handling.sh <person>"
	exit 1
fi
