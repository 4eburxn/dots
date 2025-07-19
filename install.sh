#!/bin/bash

function fonnymv {
	cd $1
	for i in * ; do
		if [[ ! -L $i && -e $i ]]; then
			mv $i $2
			ln -s $2$i ./
			echo moving $i to $2$i
		fi
	done
	for i in .* ; do
		if [[ ! -L $i && -e $i ]]; then
			mv $i $2
			ln -s $2$i ./
			echo moving $i to $2$i
		fi
	done
	cd ..
}


fonnymv config ~/.config/
fonnymv home ~/


