#!/bin/bash
#Browse the directory structure and display number of characters in every file

echo "Enter File Type: "
read ext
echo "Please Enter source path from where you want to copy:"
read parent
echo "Please Enter the target foler path to where you want to copy:"
read target

Count=0

browse_directory()
{
	for entry in "$1"/*
	do 
		if [ -f "$entry" ]; then
			FILE_EXT="${entry#*.}"
			if [ "$FILE_EXT" == "$ext" ]; then
			    echo Path of the files copied 
				echo $entry
				echo copied!!
			    Count=$((Count+1))
			    cp $entry $target
		    fi
		elif [ -d "$entry" ]; then
			browse_directory $entry
		fi
	done
}

browse_directory $parent
echo Total files copied = $Count

