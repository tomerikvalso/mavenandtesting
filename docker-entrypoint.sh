#!/bin/sh

set -e

if [ "$1" = "start" ]
then
  echo Initializing
  echo Starting
  contacts
fi

exec "$@"