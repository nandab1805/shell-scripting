#!/bin/bash
Id=$(id -u)
if [ $Id -ne 0 ]
then 
    echo -e "Error :: please run this script in root access"
    exit 1
else
    echo -e "You are root user"
fi
yum install mysql -y
if [$? -ne 0]
then
    echo "Error:: mysql ...Failed"
    exit 1
else
    echo "mysql ..Success"
fi