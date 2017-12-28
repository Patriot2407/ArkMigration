#!/bin/bash
# VARS
SERVERPASS='##'
RSYNCORIGINSERVER='##'
RSYNCORIGINUSER='##'
DESTINATIONTOBECOPIED='/Ark/ShooterGame/Saved'
COPYTO='/Ark/ShooterGame/Saved'
# PREREQS
sudo apt-get install sshpass rsync -y
# EXECUTION
if [ ! -d /Ark ]
	then
	mkdir /Ark
	chmod -R 777 /Ark
fi
sshpass -p '$SERVERPASS' rsync --rtvuc --progress $RSYNCORIGINUSER@$RSYNCORIGINSERVER:$DESTINATIONTOBECOPIED $COPYTO
echo "Finished"
exit 0
