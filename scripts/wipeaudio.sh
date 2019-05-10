#!/bin/bash

# Author kthull
# Email kthull@bluedropshop.com
# Version 1.1

# Description
# 
# Clearing off removable media after a recording event is tedious work.
# This script assumes a very specific structure and naming convention, 
# but it will wipe a drive in seconds and eject the disk when finished.

# This particular script is for H2N formatted SD cards, which are named
# H2N_SD. There is a companion script for factory-formatted Kingstong 
# USB thumb drives, which are named KINGSTON.

# Assumptions
# 1. SD card is named H2N_SD
# 2. The drive is mounted as /dev/disk2 (run `diskutil list` to view 
#    the current list of drive mounts)
# 3. There is a file folder named `copied` in the drive root which may 
#    contain mp3 to delete
#    the drive root
# 4. The recordings to delete are stereo recordings, which will be 
#    automagically contained in the `/STEREO/FOLDER01` folder

cd /Volumes/H2N_SD/copied
rm -rf *.mp3
cd /Volumes/H2N_SD/STEREO/FOLDER01
rm -rf *.mp3
cd ~
diskutil unmountDisk /dev/disk2
