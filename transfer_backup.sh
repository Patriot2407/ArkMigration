#!/bin/bash
# VARS
SERVERPASS='##'
RSYNCORIGINSERVER='kithcart.us'
RSYNCORIGINUSER='root'
DESTINATIONTOBECOPIED=/Ark/ShooterGame/Saved
COPYTO='/Ark'
# PREREQS
sudo apt-get install sshpass rsync -y
# EXECUTION
sshpass -p '$SERVERPASS' rsync --rtvuc --progress $RSYNCORIGINUSER@$RSYNCORIGINSERVER:$DESTINATIONTOBECOPIED $COPYTO
echo "Finished"
exit 0
