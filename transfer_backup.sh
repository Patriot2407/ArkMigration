#!/bin/bash
# VARS
SERVERPASS='##'
RSYNCORIGINSERVER='##'
RSYNCORIGINUSER='##'
DESTINATIONTOBECOPIED='/Ark/ShooterGame/Saved'
COPYTO='/Ark/ShooterGame/Saved'
# PREREQS
sudo apt-get install rsync -y
# EXECUTION
if [ ! -d /Ark ]
	then
	mkdir /Ark
	chmod -R 777 /Ark
fi
clear
echo "Starting rsync. Please wait..."
ssh $RSYNCORIGINUSER@$RSYNCORIGINSERVER rsync -rtvuc --progress $DESTINATIONTOBECOPIED $COPYTO >> /Scripts/rsync.log
echo "Finished"
exit 0
