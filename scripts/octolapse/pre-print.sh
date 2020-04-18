#!/bin/sh

# Put the arguments sent by Octolapse into variables for easy use
SNAPSHOT_NUMBER=$1
DELAY_SECONDS=$2
DATA_DIRECTORY=$3
SNAPSHOT_DIRECTORY=$4
SNAPSHOT_FILENAME=$5
SNAPSHOT_FULL_PATH=$6

# Set camera to store images in camera RAM only
gphoto2 --set-config capturetarget=0

