#!/bin/bash

USERID=$(id -u)

#this function should validate if the command is success or failure

VALIDATE(){
    #$1 --> it will receive the argument
    if [ $1 -ne 0 ]
    then
        echo "Installation ....... failure"
    else
        echo "Installation ....... success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run with root access"
    exit 1
fi

# it is our responsibility to check the installation is success or not

yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?

