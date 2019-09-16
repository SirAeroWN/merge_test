#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for f in $( ls "$DIR" ); do
  fdir="$DIR/$f"
  if [ -d "$fdir/.git" ]; then
    cd "$fdir"
    [ "$( git rev-parse --abbrev-ref HEAD )" = "develop" ] && printf "In $fdir\n" && git fetch --prune && git reset --hard origin/develop
  fi
done
