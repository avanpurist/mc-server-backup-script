#! /usr/bin/bash

srv_path="/srv/minecraft"

#Files to back up
backup_files="$srv_path/world"

#Backup folder
dest="$HOME/minecraft-backlogger/backups"

#Create archive filename
day=`date +%F`
time=`date +%T`
archive_file="$day-$time.tar.gz"

#Print start status message
echo
echo -e "--> starting backup of directory \n--> $backup_files"
echo
echo -e "--> to location \n--> $dest"
echo
#Compress and write backup file
tar -czPf $dest/$archive_file $backup_files

#Print end status message
echo -e "--> . . . \n--> finished at `date +%T` UTC+2"
echo
