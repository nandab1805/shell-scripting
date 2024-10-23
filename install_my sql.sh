#!/bin/bash
 
Id=$(id -u)
if [ $Id -ne 0 ]
then
    echo "Error::Please run this script with root access"
else
    echo "You are Root User"
fi