#!/bin/bash

# Put your code here

function pow {
  result=$(echo "$1 ^ $2" | bc)
  echo "$result"

}

 


shortest() {
  min_length=10000
  min_strings=()
  for arg in "$@"
  do
    if [ ${#arg} -lt $min_length ]
    then
      min_length=${#arg}
      min_strings=("$arg")
    elif [ ${#arg} -eq $min_length ]
    then
      min_strings+=("$arg")
    fi
  done
  for string in "${min_strings[@]}"
  do
    #echo "$string"
    printf "%s\n" "${string[@]}"

  done
}





print_log () {

local date=$(date '+%Y-%m-%d %H:%M')


 echo "[$date] $@"


}

