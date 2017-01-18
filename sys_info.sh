#!/usr/bin/env bash
# Author: Gary Hooks
# Web: http://www.garyhooks.co.uk
# Email: garyhooks@gmail.com
# Publish Date: 14th January 2016
# Version: 1.0
# Licence: GNU GPL 
#####################################

STORAGE_DIR=$(pwd)
FILE_NAME=results.txt
DATE=$(date +"%d %B %Y")
TIME=$(date +"%T")

clear
printf "\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "########################################################################\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "###         		SysInfo (Version 1.0)                        ###\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "###        		Author: Gary Hooks 		             ###\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "###        		Website: http://www.garyhooks.co.uk          ###\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "###        		Email: garyhooks@gmail.com                   ###\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "###        		Licence: GNU GPL                             ###\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "########################################################################\n\n" | tee -a $STORAGE_DIR/$FILE_NAME

printf "Start Time: \t $TIME\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "Start Date: \t $DATE\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "Results will be stored here: \t $STORAGE_DIR/$FILE_NAME \n\n" | tee -a $STORAGE_DIR/$FILE_NAME

printf "Beginning...\n"
printf -- "------------------------------------\n\n"
sleep 1s

######### WHO IS LOGGED IN NOW  ##########
printf "Who is logged in now - (who -a)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
who -a >> $STORAGE_DIR/$FILE_NAME
printf "List of users logged in - Saved\n"
sleep 1s

######### SYSTEM NAME AND VERSION ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "System Name and Version (uname -a):\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
uname -a >> $STORAGE_DIR/$FILE_NAME
printf "System Name and Version - Saved\n"
sleep 1s

######### GET LIST OF LAST LOGGED IN USERS ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "Users last logged in (last)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
last >> $STORAGE_DIR/$FILE_NAME
printf "Users last logged in - Saved\n"
sleep 1s

######### GET LIST OF USER ACCOUNTS IN /ETC/PASSWD ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "List of user accounts from /etc/passwd\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
cat /etc/passwd >> $STORAGE_DIR/$FILE_NAME
printf "List of User Accounts - Saved\n"
sleep 1s

######### FIND CURRENT PROCESSES  #########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "List of Current Processes (ps -aux)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
ps -aux >> $STORAGE_DIR/$FILE_NAME
printf "List of Current Processes - Saved\n"
sleep 1s

######### FIND STORAGE DEVICE INFORMATION  ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "List of Block/Storage Devices (lsblk -a)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
lsblk -a >> $STORAGE_DIR/$FILE_NAME
printf "List of Storage Devices and Information - Saved\n"
sleep 1s

#############################################################
#    NOW GETTING NETWORK INFORMATION
#############################################################

printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "\n\n"
printf "******************************************\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "***    GETTING NETWORK INFORMATION     ***\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "******************************************\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "\n\n" | tee -a $STORAGE_DIR/$FILE_NAME

######### GET TARGET IP ADDRESS ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "Target's IP Address\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
hostname -I >> $STORAGE_DIR/$FILE_NAME
printf "Target's IP Address - Saved\n"
sleep 1s

######### GET TARGET HOSTNAME ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "Target's Hostname\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
hostname >> $STORAGE_DIR/$FILE_NAME
printf "Target's Hostname - Saved\n"
sleep 1s

######### GET TARGET'S ROUTING TABLE ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "Routing Table - (route)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
route >> $STORAGE_DIR/$FILE_NAME
printf "Routing Table - Saved\n"
sleep 1s

######### GET NETSTAT INFORMATION #########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "NETSTAT - Network Statistic Information (netstat -a)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
netstat -a >> $STORAGE_DIR/$FILE_NAME
printf "Network Statistics - Saved\n"
sleep 1s

######### IFCONFIG  ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "Interface Configuration (ifconfig -a)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
ifconfig -a >> $STORAGE_DIR/$FILE_NAME
printf "Network Information - Saved\n"
sleep 1s

######### ARP TABLE  ##########
printf "\n\n" >> $STORAGE_DIR/$FILE_NAME
printf "Address Resolution Information (arp)\n" >> $STORAGE_DIR/$FILE_NAME
printf -- "--------------------------------------------------------------------\n\n" >> $STORAGE_DIR/$FILE_NAME
arp >> $STORAGE_DIR/$FILE_NAME
printf "ARP Details - Saved\n"
sleep 1s

###############################
##           END             ##
###############################
DATE=$(date +"%d %B %Y")
TIME=$(date +"%T")
printf "\n\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "Process Completed\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf -- "------------------------------------\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "End Time: \t $TIME\n" | tee -a $STORAGE_DIR/$FILE_NAME
printf "End Date: \t $DATE\n" | tee -a $STORAGE_DIR/$FILE_NAME

printf "\n\n" | tee -a $STORAGE_DIR/$FILE_NAME
## END ##
