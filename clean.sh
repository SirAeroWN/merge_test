#!/usr/bin/env bash


# directories that hold the projects you want to be fully cleaned
high_level_dirs=()

echo $( pwd )

for d in ${high_level_dirs[*]}; do
  for f in $( ls -d $d/*); do
    if [ -f $f/*.csproj ]; then
      [[ -d "$f/bin" ]] && echo "removing $f/bin" && rm -rf "$f/bin"
      [[ -d "$f/obj" ]] && echo "removing $f/obj" && rm -rf "$f/obj"
    fi
  done
done
