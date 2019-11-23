#!/bin/bash

# What to backup. 
backup_files="/home/edwin/Documents/490/490project10/deploy/"

# Where to backup to.
dest="/home/edwin/Documents/490/490project10/deploy/backup/"

# version_num= $1
# version_n=$1

# Create archive filename.
current_time=$(date +%m-%d-%Y_%H-%M-%S)
archive_file="backend-backup.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file -C /home/edwin/Documents/490/490project10/deploy/scp .

# Print end status message.
echo
echo "Backup finished"
date
echo


# Long listing of files in $dest to check file sizes.
ls -lh $dest

