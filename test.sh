#!/usr/bin/env bash

for file in $(ls themes) ;  do

  if [[ ! -z $1 ]] ; then
    if [[ $file = *$1* ]] ; then
      echo $file
      source ./themes/$file
      prompt_cmd
      echo "the prompt is '${PS1@P}'"
    fi
  else
    echo $file
    source ./themes/$file
    prompt_cmd
    echo "the prompt is '${PS1@P}'"
  fi
done