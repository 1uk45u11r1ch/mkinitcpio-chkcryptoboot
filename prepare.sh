#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"
while [ -L "$DIR" ]; do
	DIR="$(readlink $DIR)"
done

# prepare file permissions
find $DIR -type f -exec chmod go-rwx {} \;
