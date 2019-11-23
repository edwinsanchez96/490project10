#!/bin/bash



# SCP the tar that was just made to the deploy server 
scp /home/edwin/Documents/490/490project10/deploy/backup/* edwin@192.168.1.4:/var/temp

#delete local copy once tar has reached server
rm -r /home/edwin/Documents/490/490project10/deploy/backup/*
