#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run with root access"
    exit 1
fi

# it is our responsibility to check the installation is success or not

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is error"
    exit 1
else
    echo "Installation is successful"
fi