#!/usr/bin/env bash

for word in $(echo $1 | xargs); do
  echo -n ${word:0:1}
done