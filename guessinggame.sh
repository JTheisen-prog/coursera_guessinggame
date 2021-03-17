#!/usr/bin/env bash
# File: guessinggame.sh

function get_number_of_files {
  echo (ls | wc -l)
}

number_of_files=$(get_number_of_files)


echo 'Please guess how many files exists in the directory of this program:'
read response

while [[ $response -ne $number_of_files ]]
do
  if [ $response -lt $number_of_files ]
  then
    echo 'Your answer was too low. Please guess again:'
    read response
  else
    echo 'Your answer was too high. Please guess again:'
    read response
  fi
done

echo 'Your guess was correct - congratulations!'