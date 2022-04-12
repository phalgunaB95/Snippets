#! /bin/bash
# https://stackoverflow.com/a/28044986
function ProgressBar {
  let _progress=(${1}*100/${2}*100)/100
  let _done=(${_progress}*4)/10
  let _left=40-$_done
  _fill=$(printf "%${_done}s")
  _empty=$(printf "%${_left}s")
  printf "\rProgress : [${_fill// /▇}${_empty// /-}] ${_progress}%%"
}

# Usage:
# ProgressBar $COUNTER $TOTAL
