#!/usr/bin/env bash

for word in $(echo "$1" | xargs -0 | tr '[:lower:]' '[:upper:'] | sed 's/[-_\*]/ /g'); do
	echo -n "${word:0:1}"
done
