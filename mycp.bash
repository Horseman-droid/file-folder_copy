#!/bin/bash

echo "Enter a valid destination directory where you want to copy: "
while [ 1 -ge 0 ]   #This while loop keeps taking input until a correct destination path has been entered
do 
	# read the destination directory
	read destDir
	# check if directory exists at the entered address
	if [ ! -d $destDir ]	# if not then keep asking the user 
	then
		echo "Directory does not exist."
		echo "Please enter correct path: "	
	else
		break
	fi
done


echo "Enter the number of files you want to copy : "
read n   #Taking input of the number of files to be moved 
    
while [ $n -ge 1 ]
do 
  echo "Enter the full path of the file: "
  while [ 1 -ge 0 ]   #This while loop keeps taking input until a correct destination path has been entered
	do 
		# read the file path
		read FILE
		# check if file exists at the entered address
		if [ ! -f $FILE ]	# if not then keep asking the user 
		then
			echo "Please Re enter a Valid File : "
		else
			echo
			let n-=1
			./mycp $FILE $destDir
			break
		fi
	done
done
