#!/bin/sh
SCRIPTS_PATTERN="*.lua"
SCRIPT_PATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [ $# -eq 0 ]; then
	for script in $SCRIPT_PATH/$SCRIPTS_PATTERN; do
		echo LUA $(basename -s .lua $script):
		cat $script
		echo
	done
else
	echo LUA $(basename -s .lua $1):
	cat $SCRIPT_PATH/$1
	echo
fi