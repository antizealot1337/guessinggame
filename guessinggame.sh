#!/usr/bin/env bash

guess=-1
count=0

for i in $(find . -file)
do
	let count=$count+1
done

function check {
	local status=""

	if [[ "$1" -lt "$2" ]]
	then
		status='low'
	elif [[ "$1" -gt "$2" ]]
	then
		status='high'
	else
		return
	fi

	echo "Guess of $1 is too $status"
}

echo "Guess the number of files in the directory"

while [[ $guess -ne $count ]]
do
	read -p 'Enter your guess: ' guess

	check "$guess" "$count"
done

echo "Congradulations! The number of files was $count"
