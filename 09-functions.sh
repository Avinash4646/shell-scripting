#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

RED="\e[31m"
GREEN="\e[32m"
RESETCOLOR="\e[0m"

#this function should validate if the command is success or failure

VALIDATE(){
    #$1 --> it will receive the argument
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ....... $RED failure $RESETCOLOR"
        exit 1
    else
        echo -e "$2 ....... $GREEN success $RESETCOLOR"
    fi
}


USERID=$(id -u)

#this function should validate if the command is success or failure


if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run with root access"
    exit 1
fi

# it is our responsibility to check the installation is success or not

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing Mysql"

yum install postfixxx -y &>>$LOGFILE

VALIDATE $? "Installing Postfix"

