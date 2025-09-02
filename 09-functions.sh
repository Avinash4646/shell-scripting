#!/bin/bash

USERID=$(id -u)

#this function should validate if the command is success or failure

VALIDATE(){
    #$1 --> it will receive the argument
    if [ $1 -ne 0 ]
    then
        echo "$2 ....... failure"
    else
        echo "$2 ....... success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run with root access"
    exit 1
fi

# it is our responsibility to check the installation is success or not

yum install mysqlll -y

VALIDATE $? "Installing Mysql"

yum install postfixxx -y

VALIDATE $? "Installing Postfix"

