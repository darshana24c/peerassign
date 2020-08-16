#!/bin/bash
function guess(){
count=1
files=$(ls |wc -l)
echo $files
while [ $count = "1" ]
do
	echo "Enter a number"
	read response
	if [ $response == $files ]
	then
		echo "Congratulations you guessed it right"
		count=0
	elif [ $response -gt $files ]
	then
		echo "Too High"
	else
		echo "Too Low"
	fi
done
}
guess
