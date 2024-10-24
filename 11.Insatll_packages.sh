#!/bin/bash
Id=$(id -u)
validate(){
    if [ $1 -ne 0 ]
then
    echo "Error::$2 ...Failed"
    exit 1
else
    echo "$2 ..Success"
fi

}
if [ $Id -ne 0 ]
then 
    echo -e "Error :: please run this script in root access"
    exit 1
else
    echo -e "You are root user"
fi
yum install mysql -y
validate $? "Installing mysql"
yum install git -y
validate $? "Installing git"