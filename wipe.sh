#!/bin/bash
#NOTICE: USE AT YOUR OWN RISK WIPE SCRIPT IS DESIGNED TO CLEAR ALL EVIDENCE OF HISTORY AND 
#UNIQUE SETTINGS ON THIS NODE FOR A SHARED ENVIRONMENT.
shred -u "/home/centos/.\*history";
shred -u "~/.\*history";
rm -rf /home/centos/.ssh;
#sudo clear; # Just in case.
#dd if=/dev/zero of=/dev/sda

#sudo history -c;
###
