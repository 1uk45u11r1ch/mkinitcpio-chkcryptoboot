#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"

# prepare file permissions
find $DIR -type f -exec chmod go-rwx {} \;
