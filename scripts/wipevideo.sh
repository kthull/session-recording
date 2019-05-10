#!/bin/bash

# Author kthull
# Email kthull@bluedropshop.com
# Version 1.1

# Description
# 
# Clearing off removable media after a recording event is tedious work.
# This script assumes a very specific structure and naming convention, 
# but it will wipe a drive in seconds and eject the disk when finished.

# This particular script is for USB thumb drives, named KINGSTON. 
# There is a companion script for H2N formatted SD cards, which are 
# named H2N_SD.

# Assumptions
# 1. USB thumb drive is named KINGSTON
# 2. The drive is mounted as /dev/disk3 (run `diskutil list` to view 
#    the current list of drive mounts)
# 3. There is a file folder named `copied` in the drive root which may 
#    contain mp4 files to delete, as well as possible loose mp4 files 
#    in the drive root to delete

cd /Volumes/KINGSTON
rm -rf *.mp4
cd /Volumes/KINGSTON/copied
rm -rf *.mp4
cd ~
diskutil unmountDisk /dev/disk3

