#!/bin/bash
Id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
Logfile="/tmp/$0-$timestamp.log"
R="\e[31m"
Y="\e[32m"
G="\e[33m"
N="\e[0m"


validate(){
    if [ $1 -ne 0 ]
    then
        echo "Error:: $2 ... $R failed $N"
        exit 1
    else
        echo "$2 ...$G Success $N"
    fi
}
if [ $Id -ne 0 ]
then
    echo "$R Error::Please run this script with root access $N"
    exit 1 
else
    echo "You are Root User"
fi

yum install mysql -y &>> $Logfile
validate $? "Installed mysql"
yum install git -y &>> $Logfile
validate $? "Installed git"