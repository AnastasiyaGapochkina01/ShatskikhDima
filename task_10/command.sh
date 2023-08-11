#!/bin/bash

NAME=$(whoami)
USER_ID=$(id $NAME | awk '{ print $1 }' | cut -d '(' -f1)

echo "Current user is $NAME with $USER_ID"