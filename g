#!/bin/bash

function g() {

	if [ "$1" = here ]; then
		echo "$PWD" > "/home/khashayar/tmp/goto_directory"
	else 

		cd $( cat "/home/khashayar/tmp/goto_directory" )
	fi
}

