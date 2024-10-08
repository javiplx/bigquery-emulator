#!/bin/sh

set -e

CLIARG=
for envvar in $( printenv | sed -n -e 's/BQEMULATOR_//p' ) ; do
  varname=${envvar%=*}
  value=${envvar#*=}
  CLIARG="$CLIARG --$( echo ${varname} | tr _A-Z -a-z ) ${value}"
  done

/bin/bigquery-emulator $CLIARG $@
