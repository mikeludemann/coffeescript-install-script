#!/bin/bash

echo "Checking coffeescript"

if coffee -v > /dev/null; then
	echo "coffeescript is already installed."
else
	echo "installing coffeescript"
	if node -v > /dev/null; then
		if npm -v > /dev/null; then
			echo "installing coffeescript - global"
			npm install -g coffeescript
		else
			echo "npm is not installed"
		fi
	else
		echo "node is not installed"
	fi
fi
