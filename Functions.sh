#!/bin/bash
Id=$(id -u)
validate(){
    if [ $? -ne 0 ]
    then
        echo "Error:: Installing  is failed"
        exit 1
    else
        echo "Installing  is Success"
    fi
}
if [ $Id -ne 0 ]
then
    echo "Error::Please run this script with root access"
    exit 1 
else
    echo "You are Root User"
fi

yum install mysql -y
validate
yum install git -y
validate