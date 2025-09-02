#!/bin/bash

for i in $@
do
    yum install $i -y
done

# Improvements
# 1- implement log files
# 2- implement colors
# 3- implement validations
# 4- implement validations through functions
# 5- your script should check package is already installed or not, if already installed print yellow color
# 6- if installed just print package is already installed, it should not run install command