#! /usr/bin/bash
#Define exceptions
#First save after midnight of the first day every week counting 01/MM as start

exceptions="! -name "20??-??-01-00:0?*" ! -name "20??-??-08-00:0?*" ! -name "20??-??-15-00:0?*" ! -name "20??-??-22-00:0?*" ! -name "20??-??-29-00:0?*""

#Remove all .tar.gz files older than a week apart from exceptions
find "/home/anew/minecraft-backlogger/backups" -name "*.tar.gz" $exceptions -mtime +7 -exec rm {} \; 

